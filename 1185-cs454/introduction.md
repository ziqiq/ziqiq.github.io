# Introduction

## Distributed System

A distributed system is a collection of _autonomous computing elements_(also
known as _node_) that appears to its user as a _single coherent system_.

Problems:
 - Each node has its own time, no global clock
 - Group membership management and authorization

_Overlay network_ is the organization of the distributed system. Nodes only
communicates with its neighbours. There are 2 types of overlay network: 
_structured_ and _unstructured_.

> Example: peer-to-peer system

Goals:
 - Distribution transparency
 - Partial failures transparency

_Middleware_ is the commonly used components and functions for every nodes.


## Transparencies

1. Access: Hide data representations of objects.
2. Location: Hide physical/logical location.
3. Relocation: Move the object when it is in use.
4. Migration: Move the object.
5. Replication: Hide replicas of the object.
6. Concurrency: Allow the object used by several indipendent users.
7. Failure: Hide failure and recovery of an object.

## Openess

1. Comform to a well-defined interface
2. Support portability of applications
3. Make extensibility
4. Easily interoperate


## Scalbility

1. Size: including storage, computation, and bandwith resource
2. Geographical
3. Administrative



