# 1. Start/Stop Oracle Listner

command:

```console
[oracle@db1]$ lsnrctl start
[oracle@db1]$ lsnrctl stop
```

## example shell script start-listner.sh

```sh
#!/bin/bash

lsnrctl start
```

# 2. Start/Stop Oracle DB Instance

## 2.1. Start Oracle DB

1. Set/Export ORACLE_SID environment variable

command:

```console
[oracle@db1]$ ORACLE_SID=condmy
[oracle@db1]$ export ORACLE_SID
```

2. Using sqlplus tool, login to oracle instance as sysdba

command:

```console
[oracle@db1]$ sqlplus / as dba
```

output:

```console
SQL*Plus: Release 12.1.0.2.0 Production on Mon Sep 23 11:44:58 2019

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL>
```

3. Verify if the instance is running already

command:

```console
SQL> select instance_name, status from v$instance;
```

output: If the instance is up

```console
INSTANCE_NAME    STATUS
---------------- ------------
condmy           OPEN
```

output: If the instance is down

```console
select instance_name, status from v$instance
*
ERROR at line 1:
ORA-01034: ORACLE not available
Process ID: 0
Session ID: 0 Serial number: 0
```

4. Start instance

command:

```console
SQL> startup
```

output:

```console
ORACLE instance started.

Total System Global Area 2415919104 bytes
Fixed Size                  3713672 bytes
Variable Size            1275069816 bytes
Database Buffers          989855744 bytes
Redo Buffers              147279872 bytes
Database mounted.
Database opened.
```

## 2.1. Stop Oracle DB

1. Set/Export ORACLE_SID environment variable

command:

```console
[oracle@db1]$ ORACLE_SID=condmy
[oracle@db1]$ export ORACLE_SID
```

1. Using sqlplus tool, login to oracle instance as sysdba

command:

```console
[oracle@db1]$ sqlplus / as dba
```

output:

```console
SQL*Plus: Release 12.1.0.2.0 Production on Mon Sep 23 11:44:58 2019

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL>
```

3. Verify if the instance is running already

command:

```console
SQL> select instance_name, status from v$instance;
```

output: If the instance is up

```console
INSTANCE_NAME    STATUS
---------------- ------------
condmy           OPEN
```

output: If the instance is down

```console
select instance_name, status from v$instance
*
ERROR at line 1:
ORA-01034: ORACLE not available
Process ID: 0
Session ID: 0 Serial number: 0
```

4. Stop instance

command:

```console
SQL> shutdown
```

output:

```console
Database closed.
Database dismounted.
ORACLE instance shut down.
```
