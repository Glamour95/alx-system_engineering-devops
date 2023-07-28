image goes here

Design of a Secured and Monitored Three-Server Web Infrastructure for www.foobar.com

Components:

Server 1:

Role: Web Server (Nginx)
Purpose: To handle HTTP requests from users, serve static files, and handle reverse proxying to the application server. It also terminates SSL for HTTPS traffic.
Server 2:

Role: Application Server
Purpose: To execute the server-side code, process dynamic content, and generate responses for the website.
Server 3:

Role: Application Server
Purpose: To provide redundancy and load balancing for the application server. It will have the same codebase as Server 2.
Load Balancer (HAProxy):

Purpose: To distribute incoming HTTP requests across the two application servers (Server 2 and Server 3) in a balanced manner. This load balancer will enable a high availability setup.
Set of Application Files (Code Base):

Purpose: Contains the server-side code (e.g., PHP, Python, Node.js) that handles the website's logic, database queries, and dynamic content generation. This codebase is deployed on both application servers (Server 2 and Server 3).
Database (MySQL):

Role: Primary-Replica (Master-Slave) Cluster
Purpose: To store and manage the website's data, providing redundancy and read scalability.
Primary Node:
Role: Master Node
Purpose: Handles both read and write operations. All writes (e.g., INSERT, UPDATE, DELETE) are performed on the Primary node.
Replica Node:
Role: Slave Node
Purpose: Handles read operations (e.g., SELECT). It replicates data from the Primary node and provides load balancing for read queries.
3 Firewalls:

Purpose: To add an additional layer of security to the infrastructure and protect the servers from unauthorized access and potential attacks.
SSL Certificate:

Purpose: To enable HTTPS for secure communication between the users and the web server. It encrypts the traffic, ensuring data privacy and security during transmission.
3 Monitoring Clients (Data Collectors for Sumo Logic or other monitoring services):

Purpose: To monitor the health, performance, and security of the servers and infrastructure components.
Data Collection:
The monitoring clients continuously collect various performance metrics, logs, and events from the servers and send the data to the monitoring service (e.g., Sumo Logic) for analysis and visualization.
Explanation:

Firewalls: Firewalls are added to provide an additional layer of security and control the incoming and outgoing traffic to and from the servers. They help protect the infrastructure from unauthorized access, cyber threats, and potential attacks.

SSL Certificate and HTTPS: SSL certificates are essential for serving encrypted traffic over HTTPS. HTTPS encrypts the data exchanged between the users' browsers and the web server, ensuring that sensitive information remains confidential and secure during transmission.

Monitoring: Monitoring is used to keep track of the health, performance, and security of the servers and the entire infrastructure. It helps in identifying potential issues, providing insights into system behavior, and enabling proactive management of resources.

Monitoring Data Collection: The monitoring clients (data collectors) continuously gather performance metrics, logs, and events from the servers and send this data to the monitoring service (e.g., Sumo Logic). The monitoring service processes and analyzes this data, creating visualizations, alerts, and reports for better understanding and management of the infrastructure.

Monitoring Web Server QPS:
To monitor the web server's queries per second (QPS), the monitoring service should collect data related to incoming HTTP requests over a specific time period. It calculates the average number of requests per second to understand the server's request handling capacity and identify potential bottlenecks.

Issues with this Infrastructure:

Terminating SSL at the Load Balancer Level: Terminating SSL at the load balancer means that encrypted traffic is decrypted at the load balancer before being forwarded to the web server. This can pose a security risk as sensitive data is exposed within the internal network. It is recommended to terminate SSL at the web server to maintain end-to-end encryption.

Single MySQL Server Capable of Accepting Writes: Having only one MySQL server capable of accepting writes (Primary node) creates a single point of failure. If the Primary node fails, the application won't be able to perform write operations, leading to potential downtime and data inconsistencies. It is better to have multiple MySQL replicas capable of accepting writes to achieve better fault tolerance.

Servers with All the Same Components: Having identical components (database, web server, and application server) on all servers might lead to resource wastage and reduced flexibility. Different servers should be assigned specific roles to optimize resource utilization and accommodate varying workloads.
