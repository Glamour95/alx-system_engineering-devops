1. Simple Web Infrastructure with One Server
Overview
In this design, we'll create a simple web infrastructure using a single server with a LAMP stack to host the website www.foobar.com.

Components:
Server: A physical or virtual machine that hosts all the required components of the web infrastructure.

Web Server (Nginx): The web server is responsible for handling HTTP requests from users' browsers and serving static content like HTML, CSS, and images.

Application Server: The application server is responsible for processing dynamic content and executing server-side code. It interacts with the database and generates dynamic web pages based on user requests.

Application Files (Code Base): Your website's code base containing server-side scripts, application logic, and dynamic content.

Database (MySQL): The database stores and manages the website's data, such as user accounts, posts, and other dynamic information.

Specifics:
Server: The server is the main computing unit responsible for running the entire web infrastructure. It hosts the web server, application server, and database.

Domain Name (www.foobar.com): The domain name is the address used by users to access the website. In this case, www.foobar.com is configured to point to the server's IP address, which is 8.8.8.8.

DNS Record "www": The "www" in www.foobar.com is a subdomain and is represented as a CNAME (Canonical Name) DNS record. It points to the main domain, foobar.com, which then resolves to the server's IP address (8.8.8.8).

Web Server (Nginx): The web server's role is to handle incoming HTTP requests from users' browsers. It serves static content and forwards dynamic requests to the application server for processing.

Application Server: The application server is responsible for executing server-side scripts, processing dynamic content, and interacting with the database to generate dynamic web pages.

Database (MySQL): The database stores and manages the website's data. The application server communicates with the database to retrieve or update information as needed.

Communication: The server communicates with the user's computer through the HTTP protocol. The web server and application server process the incoming HTTP requests, generate the appropriate response, and send it back to the user's browser.

Issues:
Single Point of Failure (SPOF): Since all components are hosted on a single server, if the server fails, the entire website becomes inaccessible.

Downtime During Maintenance: When performing maintenance tasks like deploying new code or restarting the web server, the website will experience downtime.

Limited Scalability: If the website experiences a surge in incoming traffic, a single server may not be able to handle the load efficiently, leading to performance issues.

2. Distributed Web Infrastructure with Three Servers
Overview
In this design, we'll create a distributed web infrastructure using three servers to host the website www.foobar.com. The infrastructure includes load balancing for better performance and database replication for fault tolerance.

Components:
Server 1: Web server (Nginx) and application server.

Server 2: Web server (Nginx) and application server.

Server 3: Database server (MySQL).

Load Balancer (HAproxy): Distributes incoming user requests across the two web servers to achieve better performance and scalability.

Application Files (Code Base): Your website's code base containing server-side scripts, application logic, and dynamic content.

Database (MySQL): The database server for storing and managing the website's data.

Specifics:
Server 1 and Server 2: These servers host both the web server and the application server. Distributing the load across two servers helps handle increased traffic efficiently.

Server 3 (Database): This server hosts the database (MySQL) and serves as the primary node in a Primary-Replica (Master-Slave) cluster.

Load Balancer (HAproxy): The load balancer sits in front of Server 1 and Server 2, distributing incoming HTTP requests based on a distribution algorithm (e.g., round-robin) to ensure even load distribution among the application servers.

Database Primary-Replica Cluster: Server 3 acts as the Primary node, while additional replicas can be added for read scalability and fault tolerance. Replicas are read-only copies of the Primary node, and data is replicated from the Primary to the Replicas.

Issues:
Single Point of Failure (SPOF): While the web servers are load-balanced for redundancy, the database server (Server 3) is a single point of failure. If it goes down, the website's functionality may be affected.

Security Issues: The infrastructure lacks firewalls and HTTPS, leaving it vulnerable to potential security breaches.

No Monitoring: Without proper monitoring, it becomes challenging to identify performance bottlenecks or potential issues.

3. Secured and Monitored Web Infrastructure with Three Servers
Overview
In this design, we'll enhance the previous distributed web infrastructure to address security concerns, serve traffic over HTTPS, and introduce monitoring for better performance insights.

Components:
Server 1: Web server (Nginx).

Server 2: Application server.

Server 3: Database server (MySQL).

Load Balancer (HAproxy): Distributes incoming user requests across the web and application servers.

Application Files (Code Base): Your website's code base containing server-side scripts, application logic, and dynamic content.

Database (MySQL): The database server for storing and managing the website's data.

Firewalls: To enhance security, we add firewalls to protect the servers from unauthorized access.

SSL Certificate: To serve traffic over HTTPS, we obtain an SSL certificate for www.foobar.com.

Monitoring Clients: Three monitoring clients (data collectors) are added to gather performance data and logs for analysis.

Specifics:
Firewalls: The firewalls are added to restrict access to the servers, allowing only necessary connections and blocking unauthorized attempts.

HTTPS: An SSL certificate is installed on the web server (Server 1) to enable HTTPS, securing data transmission between the server and users' browsers.

Monitoring: The monitoring clients on each server collect performance data, logs, and metrics. They send this information to a monitoring service like Sumologic for analysis and visualization.

Monitoring QPS: To monitor web server QPS (Queries Per Second), we can use the monitoring data collected to identify the number of incoming requests per second to the web server.

Issues:
Terminating SSL at the Load Balancer: Terminating SSL at the load balancer level could introduce a security risk as decrypted traffic is forwarded to the backend servers. It is recommended to terminate SSL at the web server level for end-to-end encryption.

Single MySQL Server Accepting Writes: Having only one MySQL server capable of accepting writes poses a risk of data loss or unavailability if the server fails. Implementing database replication can provide better fault tolerance.

Author: Glamour95
