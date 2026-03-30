# OSI Model (7 Layers)
| Layer | Name         | Key Function             | Examples             |
| ----- | ------------ | ------------------------ | -------------------- |
| 7     | Application  | User-facing protocols    | HTTP, FTP, SMTP, DNS |
| 6     | Presentation | Encryption, formatting   | SSL/TLS, JPEG        |
| 5     | Session      | Session management       | NetBIOS              |
| 4     | Transport    | Delivery (reliable/fast) | TCP, UDP             |
| 3     | Network      | Routing, IP addressing   | IP, ICMP             |
| 2     | Data Link    | MAC, switching, frames   | Ethernet             |
| 1     | Physical     | Signals, cables          | Fiber, copper        |


# Common HTTP Status Codes
1. 2xx (Success)
200 OK – Request successful
201 Created – Resource created
204 No Content – Success, no body returned
2. 3xx (Redirection)
301 Moved Permanently – URL changed permanently
302 Found – Temporary redirect
304 Not Modified – Use cached version
3. 4xx (Client Errors)
400 Bad Request – Invalid request
401 Unauthorized – Authentication required
403 Forbidden – Access denied
404 Not Found – Resource doesn’t exist
405 Method Not Allowed
408 Request Timeout
429 Too Many Requests
4. 5xx (Server Errors)
500 Internal Server Error
502 Bad Gateway
503 Service Unavailable
504 Gateway Timeout

# Common Ports
| Port | Protocol   | Purpose              |
| ---- | ---------- | -------------------- |
| 80   | HTTP       | Web traffic          |
| 443  | HTTPS      | Secure web           |
| 22   | SSH        | Secure remote access |
| 21   | FTP        | File transfer        |
| 53   | DNS        | Name resolution      |
| 25   | SMTP       | Email sending        |
| 110  | POP3       | Email retrieval      |
| 143  | IMAP       | Email sync           |
| 3389 | RDP        | Remote desktop       |
| 3306 | MySQL      | Database             |
| 5432 | PostgreSQL | Database             |

# Traefik works in both Application layer (primarily) and transport layer
Application Layer 7: Traefik acts as API gateway, handles HTTP requests, routes based on host/path rules, and manages SSL termination
Transport Layer 4: Acts as LB for TCP, UDP - allowing routing based on IP addresses & ports