---
title: SSH Hardening Notes
date: 2026-04-28
tags: [ssh, security]
excerpt: Notes on SSH port migration and hardening
readingTime: 2
---

# SSH Hardening Notes (Port Change & Authentication)

When modifying SSH configuration, always keep an active SSH session open.
If the new configuration is incorrect, you can easily lock yourself out of the system.

## Goal
- Change the default SSH port (22 -> custom, e.g. 2222)
- Disable password-based authentication
- Allow only SSH key-based access
- SSH Port Configuration

There are multiple SSH-related config sources, which can be confusing.

Initially, I modified:
```
sudo nano /etc/ssh/sshd_config
```
This is the correct server-side configuration file.

Note: /etc/ssh/ssh_config is client-side, not relevant for server behavior.

Apply changes
```
sudo systemctl restart ssh
```
Verify if the port is open
```
ss -tlnp | grep ssh
```

If the new port (e.g. 2222) is not listed -> SSH is not listening on it.

## Core SSH Security Settings

`PermitRootLogin no`
- Disables direct SSH login for root
- ssh root@ip will not work
- Even with valid password or key

Root access is still possible via:
```
sudo -i
```
Or `su`

`PasswordAuthentication yes`
- Enables password-based login
- Vulnerable to brute-force attacks

Recommended to disable in production:
- PasswordAuthentication no
- PubkeyAuthentication yes
  
Enables SSH key-based authentication

Uses keys from ~/.ssh/authorized_keys

Much more secure than passwords

## Debugging
Check active SSH ports
```
sshd -T | grep port
```

Find all SSH port configurations
```
grep -R "Port" /etc/ssh/
```

Check active listeners
```
ss -tlnp | grep ssh
```

Example:
```
LISTEN 0      4096         0.0.0.0:2222       0.0.0.0:*    users:(("sshd",pid=251675,fd=3),("systemd",pid=1,fd=69))
LISTEN 0      4096            [::]:2222          [::]:*    users:(("sshd",pid=251675,fd=4),("systemd",pid=1,fd=70))
```

If port 22 is still listening, there is likely:

- an override config
- or a stale runtime state

## Important Notes
- Remove, do not comment out Port 22 line (in some cases, config changes did not fully apply until cleaned)
- SSH may not fully reload cleanly → old listeners can persist
- A full system reboot can resolve stuck listeners, but proper config cleanup is the real fix
