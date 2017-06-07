---
layout: post
title: CREATE DATABASE and the pg_database catalog
---

The CREATE DATABASE statement is used to create a new PostgreSQL database. It does so by cloning an existing database, a template. PostgreSQL comes with two template databases, ```template0``` and ```template1```. The difference between ```template0``` and ```template1``` is their intended use. ```template1``` is the default template when creating a new database, it can also be connected to and any custom objects that new databases should have can be created there. ```template0``` does not accept connections and is therefore a clean source for those times when ```template1``` has become messy for some reason.

When a new database is created a new row is added to the ```pg_database``` catalog. ```pg_database``` stores all the database settings that are available in the ```CREATE DATABASE``` statement. Collation, encoding and tablespace information along with connectable and connection limits are stored here. 

```pg_database``` is a shared catalog that is available and shows the same data no matter what database you are connected to. Interestingly for [comparing PostgreSQL databases] the dependencies a database has on its collation, tablespace and owner are not captured in ```pg_shdepend```, the catalog that contains dependencies between cluster-wide objects.

```SQL
CREATE DATABASE name
    [ [ WITH ] [ OWNER [=] user_name ]
           [ TEMPLATE [=] template ]
           [ ENCODING [=] encoding ]
           [ LC_COLLATE [=] lc_collate ]
           [ LC_CTYPE [=] lc_ctype ]
           [ TABLESPACE [=] tablespace_name ]
           [ ALLOW_CONNECTIONS [=] allowconn ]
           [ CONNECTION LIMIT [=] connlimit ]
           [ IS_TEMPLATE [=] istemplate ] ]
```
[CREATE DATABASE documentation](https://www.postgresql.org/docs/current/static/sql-createdatabase.html)


|Name|Type|References|Description|
|----|----|----------|-----------|
|oid|	oid	 ||	Row identifier (hidden attribute; must be explicitly selected)
|datname|	name|	| 	Database name
|datdba|	oid|	pg_authid.oid|	Owner of the database, usually the user who created it
|encoding|	int4||	 	Character encoding for this database (pg_encoding_to_char() can translate this number to the encoding name)
|datcollate|	name|	| 	LC_COLLATE for this database
|datctype|	name|	| 	LC_CTYPE for this database
|datistemplate|	bool||	 	If true, then this database can be cloned by any user with CREATEDB privileges; if false, then only superusers or the owner of the database can clone it.
|datallowconn|	bool	| |	If false then no one can connect to this database. This is used to protect the template0 database from being altered.
|datconnlimit|	int4	| |	Sets maximum number of concurrent connections that can be made to this database. -1 means no limit.
|datlastsysoid|	oid	| |	Last system OID in the database; useful particularly to pg_dump
|datfrozenxid|	xid	| |	All transaction IDs before this one have been replaced with a permanent ("frozen") transaction ID in this database. This is used to track whether the database needs to be vacuumed in order to prevent transaction ID wraparound or to allow pg_clog to be shrunk. It is the minimum of the per-table pg_class.relfrozenxid values.
|datminmxid|	xid|	| 	All multixact IDs before this one have been replaced with a transaction ID in this database. This is used to track whether the database needs to be vacuumed in order to prevent multixact ID wraparound or to allow pg_multixact to be shrunk. It is the minimum of the per-table pg_class.relminmxid values.
|dattablespace|	oid|pg_tablespace.oid|	The default tablespace for the database. Within this database, all tables for which pg_class.reltablespace is zero will be stored in this tablespace; in particular, all the non-shared system catalogs will be there.
|datacl|	aclitem[]	|| 	Access privileges; see GRANT and REVOKE for details|

[pg_class documentation](https://www.postgresql.org/docs/current/static/catalog-pg-database.html)
