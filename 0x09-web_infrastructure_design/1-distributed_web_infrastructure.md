image goes here 

Design of a Three-Server Web Infrastructure for www.foobar.com

Components:

Server 1:

Role: Web Server (Nginx)
Purpose: To handle HTTP requests from users and serve static files and handle reverse proxying to the application server.
Server 2:

Role: Application Server
Purpose: To execute the server-side code, process dynamic content, and generate responses for the website.
Server 3:

Role: Application Server
Purpose: To provide redundancy and load balancing for the application server. It will have the same codebase as Server 2.
Load Balancer (HAProxy):

Purpose: To distribute incoming HTTP requests across the two application servers (Server 2 and Server 3) in a balanced manner. This load balancer will enable a high availability setup.
Distribution Algorithm: Round Robin
The load balancer is configured with the Round Robin distribution algorithm, which distributes incoming requests sequentially to each server in a circular manner. Each server gets an equal share of the traffic, ensuring a balanced load distribution.
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
Communication Flow:

A user wants to access the website hosted at www.foobar.com.
The user enters www.foobar.com in their browser.
The DNS system resolves www.foobar.com to the load balancer's IP address.
The user's request reaches the load balancer.
The load balancer uses the Round Robin algorithm to distribute the request to one of the application servers (Server 2 or Server 3).
The chosen application server executes the server-side code, interacts with the MySQL database (Primary or Replica), if needed, and generates the appropriate response.
The response is sent back to the user via the load balancer.
Issues with this Infrastructure:

Single Points of Failure (SPOFs):

The load balancer could be a single point of failure. If it goes down, the entire setup becomes inaccessible.
In the database setup, the Primary node can be a single point of failure. If it fails, the application won't be able to perform write operations.
Security Issues:

There is no firewall mentioned in the design, leaving the servers vulnerable to potential attacks.
HTTPS is not mentioned, resulting in unencrypted communication between the users and the web server, potentially exposing sensitive data.
No Monitoring:

There is no monitoring system in place to track the health and performance of servers, load balancer, or database. This lack of monitoring makes it challenging to identify and resolve issues proactively.
To improve this infrastructure, additional measures should be implemented:

Introduce redundancy for the load balancer to eliminate its single point of failure.
Implement a firewall to protect the servers from unauthorized access and potential attacks.
Enable HTTPS to encrypt communication and enhance the security of data transmitted between users and the web server.
Set up monitoring tools to keep track of server health, performance metrics, and potential issues. Monitoring can help in identifying and resolving problems promptly.
