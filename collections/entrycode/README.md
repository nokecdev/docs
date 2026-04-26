# EntryCode

EntryCode is an anonymous, ephemeral chat system designed with privacy in mind.


<img width="1212" height="820" alt="ec-landing" src="https://github.com/user-attachments/assets/8b334709-5ead-4679-998c-0c9840b6f7c8" />

👉 https://entrycode.app

---

## ✨ Features

- Anonymous chat (no registration required)
- Invite-based access
- No persistent message storage
- In-memory data handling (minimizing data exposure)
- REST backend designed for Vue frontend
- Redis-based caching with TTL optimization
- PostgreSQL for persistent chat room storage
- Multi-layer input validation
- Session-based hash generation
- Session-bound identity hash mechanism
- Session token + IP + User-Agent validation
- Time-limited, backend-signed room access links
- Strict rate limiting for join/create endpoints
- Cloudflare edge protection

---

## 🧠 Concept

EntryCode is built around a simple idea:

> What if messages didn’t exist after they were sent?

Instead of storing conversations, the system keeps most data in memory, reducing the risk of long-term data compromise.

---

## 🏗️ Tech Stack

- **Backend:** C#
- **Realtime:** SignalR
- **Database:** PostgreSQL
- **Cache / Memory:** Redis
- **Infrastructure:** Docker

---

## 🎯 Goals

- Explore ephemeral communication models
- Minimize stored data
- Understand real-world system behavior under usage

--- 

## 🚀 Future Plans

- Improved stability under load
- Better room/session handling
- Optional features without compromising privacy
