
Time Ordering
--------

A timestamp is a unique identifier created to identify
a transaction.  Typically, timestamp values are assigned in the order in
which the transactions are submitted to the system.  In this context,
a timestamp can be thought of as the transaction start time.
I'll refer to the timestamp of a transaction `T` as `ts(T)` and all
operations of `T` are assigned timestamp `ts(T)`.

The easiest way to think of how timestamps are generated is to
think of a simple counter that is incremented each time the
counter's value is assigned to a transaction.  Using this scheme,
transactions would be numbered 1, 2, 3, ...

The basic idea in TO is to generate transaction timestamps, and to then
order transactions using these timestamps. If the schedule of
transactions is equivalent to this **particular** timestamp (serial)
order, then the schedule is serializable.
This is in contrast to two-phase locking, which ensures
that the schedule is equivalent to **some** serial schedule allowed by
the locking protocol.

In TO, two timestamps are associated with each data item `X`:

1. `read_ts(X)`: this is the largest timestamp from among all timestamps
   of transactions that have successfully read `X`.
2. `write_ts(X)`: this is the largest timestamp from among all timestamps
   of transactions that have successfully written `X`.


When a transaction `T1` issues `read(X)`:

If `write_ts(X) > ts(T1)`:
  the operation is rejected and `T1` is aborted.
  This is because some other transaction `T2` with timestamp
  **greater** than `T1`, and therefore **after** `T1` in timestamp order, has
  already written `X` (a conflicting operation) before `T1` reads `X`.  If
  the schedule is to be in the order of timestamps, since T1 and T2
  conflict and `ts(T1) < ts(T2)`, all of `T1`'s operations should come
  before any operation of `T2`.

If `write_ts(X) <= ts(T1)`:
  `read(X)` of `T1` is executed and `read_ts(X)` is set to the larger of
  `ts(T1)` and `read_ts(X)`.

When a transaction T1 issues `write(X)`:

If `write_ts(X)` > `ts(T1)` or `read_ts(X) > ts(T1)`:
  the operation is rejected and `T1` is aborted. This is because some
  other transaction (call it `T2`) with timestamp **greater** than `T1`, and
  therefore **after** `T1` in timestamp order, has already read or written `X`
  (a conflicting operation) before `T1` writes `X`.  If the schedule is to
  be in the order of timestamps, since `T1` and `T2` conflict and
  `ts(T1) < ts(T2)`, all of `T1`'s operations should come before any
  operation of `T2`.

If `write_ts(X) <= ts(T1)` and `read_ts(X) <= ts(T1)`:
 `write(X)` of `T1` is executed and `write_ts(X)` is set to `ts(T1)`.
