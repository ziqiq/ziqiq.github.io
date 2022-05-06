---
title: Final Review Note
author: Ziqi Qing
---

# Middleware

1. What is its role in distributed systems and advantages/disadvantages.
2. What is its application in distributed system architectures.

## Role

Middleware contains commonly used component and functions in every nodes. Its
role is to enhance the distribution transparency that is missing in networking.
In other words, middleware aims at improving the single system view that a
distributed system should have.

## Benefits

- Provide abstraction and hide implementation details.
- Isolate application from complex OS interface.
- Provide transparency for message passing, data marshaling, and security.
- Increase protablility of applications over the distributed system.

## Disadvantage

- Create a latency on the middleware layer.
- Hide detailed error from application.
- Decreases the flexibility of the interface.
- May introduce secureity problems.

## Applicatons

- 1-on-1: requires $O(n^2)$ wrappers
- Broker: requres $O(n)$ wrappers

> Adaptivity can be increased with interceptor



# Networks

1. Differences between circuit-switched and packet-switched networks
2. ISO/OSI layers/reference model
3. TCP vs UDP

## Circuit and Packet Network

-------------------------------------------------------------------------
Circuit-switched                     Packet-switched
------------------------------------ ------------------------------------
End to end resources reserved for    End to end data stream is divided
data transmission.                   into packets.

The number of current users is       Allow more users to use network.
limited.

Requires a call setup to start.      No call setup required.

Line is reserved. Data transmission  Line is shared. It may encounter
is reliable.                         congestion and loss or delay of
                                     packets.

-------------------------------------------------------------------------

## ISO/OSI Model Layers

1. Physical: bits get transfered on the circuit and hardware.
2. Link: data transfer between neighboring network elements.(ATM, Ethernet)
3. Network: routing of packets from source to destination.(IP)
4. Transport: message handling and control.(TCP, UDP)
5. Application: protocol implemented by user processes.(HTTP, FTP)

## TCP and UDP

-------------------------------------------------------------------------
Transmission Control Prorocol        User Datagram Protocol
------------------------------------ ------------------------------------
Connection-oriented: need handshake. Connectionless: no setup requried.

Reliable transport: arrival of       Unreliable transport: arrival status
message is guaranteed.               is unknown.

Flow control: order of messages is   No flow control: message order maybe
guaranteed.                          reversed.

Header is large. Process is slow.    Header is small. Process is fast.

-------------------------------------------------------------------------



# RPCs

> Client/Server computing is generally based on a model of _transient
> synchronous communication_.

1. Mechanisms, request-reply protocol
2. Fault tolerance?
3. Semantics
4. Differences between presistent and transient messaging.

## Semantics

> Copy in/copy out semantics: while procedure is executed, nothing can be
> assumed about parameter values.

## Transient and Persistent

- Transient: server discards message when it cannot be dilivered at next
  server or at the reviever.
- Persistent: a message is stored at a communication server as long as it
  takes to deliver it.

# Name Resolution

1. Pros/cons of iterative and revursive name resolution
2. What kind of protocol does DNS use?

## Iterative and Recursive Resolution

- Recursive: name server is responsible for returning the requested name
  attribute to the client by contacting other name servers. It has lower
  communications costs and can benefit from caching. Name server within a
  subdomain of a given server are geographically close together.

- Iterative: The name server can return the next lower level of name server to
  the client and the client will send another request. It reduced the load on
  the name server. The server does not need to hold state if the name is not
  resolved.

## DNS Protocol

DNS uses both recursive and iterative resolution protocols.



# DFS

1. Models (upload/download, remote access)
2. How is transparency achieved
3. How are update semantics maintained/provided

## Models

- Remote access: pass the file operations directly to the server
- Upload/download: preform operations on local cache

## Transparency

Transparency is achieved by mounting remote file system to local. File
operations are passed to server via RPC. Clients may preform operations on
remote files just like local files, so the distrubuted implementation is hidden
from clients.

## Semantics of File Sharing

- UNIX semantics: every operations on a file are instantly visible to all
  processes.
- Session semantics: no changes are visible to other processes until the file
  is closed.
- Immutable files: no updates are possible; simplifies sharing and replication.
- Transactions: all changes occur atomatically.


# Synchronization

- Logical and physical clock synchronization
- Elections of coordinator
- ACID properties
- 2PL/S-2PL similarities/differences
- Serializability and distributed transactions

Given distributed transaction, is each local history serializable?
what is each local history's serial order?
Are the histories globally serializable?
What is the global serial order?
If not, why not?

- Timestamp-baesd concurrency control protocols

## Clocks

Pysical clock: Universal Coordinated Time(UTC), is synchronized with a time
server.

- Precision: the deviation between two clocks on any two machines has a bound
- Accuracy: the differnce between a clock and the actual time has a bound.

Logic clock: Lamport's, is updated when an event happens and syncronized when
a message is sent/recieved. It does not guarantee causal order.

## Election Algorithms

- Bullying: each process sent election message to nodes with higher ID; the
  node does not recieve any response becomes coordinator.
- Ring: a list contains the members is passed around circularly; at the end the
  member with highest priority on the list becomes coordinator.

## ACID

ACID are properties of transactions.

- Atomicity: all or nothing.
- Consistency: no integrity constraints violated.
- Isolation: concurrent transactions are invisible.
- Durability: committed transactions are persist.

## 2PL and S-2PL

2PL is 2-Phase Locking. 2PL requires a transaction acquires lock before using
resource. The transaction cannot request another lock after it has released a
lock.

- Non-strict: the transaction may release lock before end.
- Strict: the transaction must hold lock until the end.

## Serializability

An execution of serveral concurrent transactions are serializable if and only
if there is an equivalent serial execution of those transactions.

Two operations from different transactions are conflict if the one happen first
is write operation.

## Timestamp-based Protocol

Let `X` be an object and `T` be current transaction.

- Read: success if `write_ts(X) <= ts(T)`
- Write: success if `write_ts(X) <= ts(T)` AND `read_ts(X) <= ts(T)`



# Replication

1. Lazy vs. eager?
2. Data-centric vs client-centric
3. Quorum protocols, conditions for forming read/write quorum

## Data-centric and Client-centric

- Client-centric: guarantee for a single client the consistency of access to
  a data store; propagate updates; be consistant eventually.
- Data-centric: strict consistency; linearlizability; sequential consistency

# Fault tolerance

- Differences between availability and reliability
- Local recovery
- 2PC different failure scenarios and how component recovers for 2PC
- Site can unilaterally abort

# Cloud and Data-Intensive Systems

- What are the key characteristics/enabling technologies for cloud environments
- Map-Reduce, understand computational model of how to write Map-Reduce function
(given a problem to solve)




