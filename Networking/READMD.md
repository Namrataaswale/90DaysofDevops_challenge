# Week 1: Networking Challenge

Welcome to Week 1 of the **90 Days of DevOps - 2025 Edition**! This week's focus is on **Networking**, a foundational skill for every DevOps professional. Let's dive into understanding key networking concepts, tools, and tasks essential for building a strong DevOps career.

## Task-1

### 1. **Understand OSI & TCP/IP Models**

The OSI model has 7 layers:

1.Physical Layer (e.g., cables, switches)
2.Data Link Layer (e.g., MAC addresses, Ethernet)
3.Network Layer (e.g., IP addresses, routers)
4.Transport Layer (e.g., TCP, UDP)
5.Session Layer (e.g., managing sessions between applications)
6.Presentation Layer (e.g., encryption, data formatting)
7.Application Layer (e.g., HTTP, FTP, DNS)

---

## Task-2

### 2. **Protocols and Ports for DevOps**
In DevOps, understanding networking protocols and their associated port numbers is crucial for managing infrastructure, deploying applications, and ensuring secure communication. Below is a list of commonly used protocols, their port numbers, and their relevance to DevOps workflows.

---

## Table of Protocols and Ports

| Protocol | Port Number | Description                              | Relevance to DevOps                              |
|----------|-------------|------------------------------------------|-------------------------------------------------|
| HTTP     | 80          | Web traffic                              | Used for accessing web applications and APIs.   |
| HTTPS    | 443         | Secure web traffic                       | Essential for secure communication with web apps.|
| FTP      | 21          | File transfers                           | Used for transferring files between servers.    |
| SSH      | 22          | Secure remote access                     | Critical for securely managing servers.         |
| DNS      | 53          | Domain name resolution                   | Ensures proper routing of traffic to servers.   |
| SMTP     | 25          | Email sending                            | Used for sending alerts and notifications.      |
| MySQL    | 3306        | Database communication                   | Connects applications to MySQL databases.       |

---

## Detailed Explanation

### 1. **HTTP (Port 80)**
- **Description:** Hypertext Transfer Protocol (HTTP) is used for transferring web pages and data over the internet.
- **Relevance to DevOps:** 
  - Used for accessing web applications, APIs, and monitoring tools.
  - Essential for CI/CD pipelines to deploy and test web applications.

### 2. **HTTPS (Port 443)**
- **Description:** HTTP Secure (HTTPS) encrypts web traffic using SSL/TLS.
- **Relevance to DevOps:**
  - Ensures secure communication between clients and servers.
  - Required for deploying secure applications and APIs.

### 3. **FTP (Port 21)**
- **Description:** File Transfer Protocol (FTP) is used for transferring files between a client and a server.
- **Relevance to DevOps:**
  - Used for uploading application files, logs, and backups to servers.
  - Often replaced by more secure alternatives like SFTP.

### 4. **SSH (Port 22)**
- **Description:** Secure Shell (SSH) provides secure remote access to servers.
- **Relevance to DevOps:**
  - Critical for managing servers, deploying applications, and troubleshooting.
  - Used in automation scripts and CI/CD pipelines.

### 5. **DNS (Port 53)**
- **Description:** Domain Name System (DNS) resolves domain names to IP addresses.
- **Relevance to DevOps:**
  - Ensures proper routing of traffic to servers and services.
  - Used in configuring load balancers and managing domain records.

### 6. **SMTP (Port 25)**
- **Description:** Simple Mail Transfer Protocol (SMTP) is used for sending emails.
- **Relevance to DevOps:**
  - Sends alerts, notifications, and reports (e.g., build failures, monitoring alerts).
  - Integrated with monitoring tools like Prometheus and Grafana.

### 7. **MySQL (Port 3306)**
- **Description:** MySQL is a relational database management system.
- **Relevance to DevOps:**
  - Connects applications to MySQL databases for data storage and retrieval.
  - Used in database migrations, backups, and scaling.
    
---  

## Task-3

### 3. **AWS EC2 and Security Groups**
- Step-by-Step Guide: Launching an AWS EC2 Instance and Configuring Security Groups
- In this guide, you’ll learn how to:
    - Launch an AWS EC2 instance (using the free tier).
    - Create and configure Security Groups to secure your instance.
      
 ### Step 1: **Launch an AWS EC2 Instance**     

1. Log in to AWS Management Console
   - Go to the AWS Management Console.
   - Sign in with your credentials.

2. Navigate to EC2
   - In the AWS Management Console, search for EC2 in the search bar.
   - Click on EC2 under Services.

3. Launch an Instance
   - Click the Launch Instance button.

    Follow these steps:

 a. Choose an Amazon Machine Image (AMI)
  - Select a free-tier eligible AMI (e.g., Amazon Linux 2 AMI or Ubuntu Server).

 b. Choose an Instance Type
  - Select the t2.micro instance type (free-tier eligible).
  - Click Next: Configure Instance Details.

 c. Configure Instance Details
  - Leave the default settings for now.
  - Click Next: Add Storage.

 d. Add Storage
   - Use the default storage settings (8 GB is free-tier eligible).
   - Click Next: Add Tags.

 e. Add Tags
   - Add a tag if needed (e.g., Key: Name, Value: MyFirstInstance).
   - Click Next: Configure Security Group.

---

### Task-4. **Hands-On with Networking Commands**

# Networking Commands Cheat Sheet

---

## 📡 ping (Check Connectivity)
Tests network connectivity between your device and a remote host.

**Usage:**
```sh
ping <hostname or IP>
```
**Example:**
```sh
ping google.com
```
🔹 Sends ICMP Echo Requests to check reachability and response time.

---

## 🌍 traceroute / tracert (Trace Packet Routes)
Displays the path packets take to a destination.

**Usage:**  
**Linux/macOS:**
```sh
traceroute <hostname or IP>
```
**Windows:**
```sh
tracert <hostname or IP>
```
**Example:**
```sh
traceroute google.com
```
🔹 Shows each network hop and possible delays.

---

## 📊 netstat (Network Statistics)
Displays network connections, listening ports, and statistics.

**Usage:**
```sh
netstat -an
```
🔹 Shows all connections and listening ports.

**Example (Linux/macOS):**
```sh
netstat -tulnp
```
🔹 Lists all listening ports with process details.

**Example (Windows):**
```sh
netstat -ano
```
🔹 Displays active connections with process IDs.

---

## 🔗 curl (Make HTTP Requests)
Transfers data from or to a server.

**Usage:**
```sh
curl <URL>
```
**Example:**
```sh
curl -I https://example.com
```
🔹 Fetches HTTP headers of a website.

**Example:**
```sh
curl -O https://example.com/file.zip
```
🔹 Downloads a file from a URL.

---

## 🌐 dig / nslookup (DNS Lookup)
Queries DNS servers for domain name information.

**Usage:**

**dig (Linux/macOS):**
```sh
dig <domain>
```
**Example:**
```sh
dig google.com
```
🔹 Retrieves DNS records of the domain.

**nslookup (Windows/Linux/macOS):**
```sh
nslookup <domain>
```
**Example:**
```sh
nslookup google.com
```
- Practice essential networking commands like:
  - ping: Check connectivity to a host (e.g., ping google.com).
  - traceroute / tracert: Trace the route packets take to a host (e.g., traceroute google.com).
  - netstat: Display network connections and statistics (e.g., netstat -tuln).
  - curl: Make HTTP requests (e.g., curl https://google.com).
  - dig / nslookup: Perform DNS lookups (e.g., dig google.com)

---

Check out my Github Link here: (https://github.com/Namrataaswale/90DaysofDevops_challenge/)

#Networking #DevOps #90DaysOfDevOps"

---
