# Networking Basics

This repository contains a set of educational files and scripts related to networking fundamentals. Each file is accompanied by explanations and questions to test your understanding of the topic.

## Table of Contents

1. [What is the OSI model?](#what-is-the-osi-model)
2. [Types of Network](#types-of-network)
3. [MAC and IP Address](#mac-and-ip-address)
4. [UDP and TCP](#udp-and-tcp)
5. [TCP and UDP Ports](#tcp-and-udp-ports)
6. [Is the Host on the Network](#is-the-host-on-the-network)

---

### What is the OSI model?

The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology. It serves as a set of specifications that network hardware manufacturers must respect. The model provides a framework for understanding and standardizing network communication.

**How is the OSI model organized?**
- Alphabetically
- From the lowest to the highest level
- Randomly

Repository: [GitHub Repository](https://github.com/alx-system_engineering-devops/0x07-networking_basics)
File: [0-OSI_model](https://github.com/alx-system_engineering-devops/0x07-networking_basics/0-OSI_model)

#### Questions:
1. What type of network is a computer in a local area connected to?
   - Internet
   - WAN (Wide Area Network)
   - LAN (Local Area Network)

2. What type of network could connect an office in one building to another office in a building a few streets away?
   - Internet
   - WAN (Wide Area Network)
   - LAN (Local Area Network)

3. What network do you use when you browse www.google.com from your smartphone (not connected to Wi-Fi)?
   - Internet
   - WAN (Wide Area Network)
   - LAN (Local Area Network)

---

### Types of Network

This section explores different types of networks, including LANs (Local Area Networks) and WANs (Wide Area Networks).

Repository: [GitHub Repository](https://github.com/alx-system_engineering-devops/0x07-networking_basics)
File: [1-types_of_network](https://github.com/alx-system_engineering-devops/0x07-networking_basics/1-types_of_network)

---

### MAC and IP Address

Learn about MAC (Media Access Control) and IP (Internet Protocol) addresses and their roles in networking.

Repository: [GitHub Repository](https://github.com/alx-system_engineering-devops/0x07-networking_basics)
File: [2-MAC_and_IP_address](https://github.com/alx-system_engineering-devops/0x07-networking_basics/2-MAC_and_IP_address)

#### Questions:
1. What is a MAC address?
   - The name of a network interface
   - The unique identifier of a network interface
   - A network interface

2. What is an IP address?
   - Similar to a postal address for houses
   - The unique identifier of a network interface
   - A number used by network devices to connect to networks

---

### UDP and TCP

Explore the differences between UDP (User Datagram Protocol) and TCP (Transmission Control Protocol).

Repository: [GitHub Repository](https://github.com/alx-system_engineering-devops/0x07-networking_basics)
File: [3-UDP_and_TCP](https://github.com/alx-system_engineering-devops/0x07-networking_basics/3-UDP_and_TCP)

#### Questions:
1. Which statement is correct for the TCP box?
   - It is a protocol that transfers data slowly but reliably.
   - It is a protocol that transfers data quickly but may lose data along the way.

2. Which statement is correct for the UDP box?
   - It is a protocol that transfers data slowly but reliably.
   - It is a protocol that transfers data quickly but may lose data along the way.

3. Which statement is correct for the TCP worker?
   - "Have you received boxes x, y, z?"
   - "May I increase the rate at which I am sending you boxes?"

---

### TCP and UDP Ports

Learn about TCP and UDP ports and their role in networking. Discover commonly used port numbers.

Repository: [GitHub Repository](https://github.com/alx-system_engineering-devops/0x07-networking_basics)
File: [4-TCP_and_UDP_ports](https://github.com/alx-system_engineering-devops/0x07-networking_basics/4-TCP_and_UDP_ports)

#### Bash Script

#!/bin/bash
# Display listening ports with PID and program name

netstat -tuln | awk '/^tcp/ {print $4, $NF}' | sed -e 's/:::/0 /' -e 's/::/ /' | awk '{print $1, $NF}' | cut -d ':' -f 2- | sort -n | awk '{printf "%-6s %-30s %-20s\n",$1,$2,$3}' | column -t
```

Example output:
```
Proto  Local Address                  PID/Program name
tcp    *:sunrpc                       518/rpcbind
tcp    *:ssh                          1240/sshd
tcp    *:32938                        547/rpc.statd
tcp6   [::]:sunrpc                    518/rpcbind
tcp6   [::]:ssh                       1240/sshd
tcp6   [::]:33737                     547/rpc.statd
udp    *:sunrpc                       518/rpcbind
udp    *:691                          518/rpcbind
udp    localhost:723                  547/rpc.statd
udp    *:60129                        547/rpc.statd
udp    *:3845                         562/dhclient
udp    *:bootpc                       562/dhclient
udp6   [::]:47444                     547/rpc.statd
udp6   [::]:sunrpc                    518/rpcbind
udp6   [::]:50038                     562/dhclient
udp6   [::]:691                       518/rpcbind
```

---

### Is the Host on the Network

Learn about ICMP (Internet Control Message Protocol) and how to use it to check if network devices are available on the network.

Repository: [GitHub Repository](https://github.com/alx-system_engineering-devops/0x07-networking_basics)
File: [5-is_the_host_on_the_network](https://github.com/alx-system_engineering_devops/0x07-networking_basics/5-is_the_host_on_the_network)

#### Bash Script

#!/bin/bash
# Ping an IP address and display results

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 {IP_ADDRESS}"
  exit 1
fi

ip_address="$1"
ping -c 5 "$ip_address"
```

Example usage:

./5-is_the_host_on_the_network 8.8.8.8
```

Example output:
```
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of

 data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=63 time=12.9 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=63 time=13.6 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=63 time=7.83 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=63 time=11.3 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=63 time=7.57 ms

--- 8.8.8.8 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4006ms
rtt min/avg/max/mdev = 7.570/10.682/13.679/2.546 ms
```
