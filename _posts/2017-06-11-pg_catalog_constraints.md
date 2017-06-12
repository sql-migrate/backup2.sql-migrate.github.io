---
layout: post
title: Documenting relationships in the pg_catalog schema
description: A list of resources to help navigate PostgreSQL's system catalogs
twitter_image: https://www.postgrescompare.com/pg_catalog/constrained_pg_catalog.png
---

While exploring the ```pg_catalog``` schema I noticed that while the relationships between the tables are documented, 
they are not enforced by actual database constraints.
Tom Lane provided an excellent answer as to why this is the case:

```
Yep, there are no explicit FKs among the system catalogs.

> For example, pg_class has relnamespace which according to the
> documentation refers to pg_namespace.oid
> (https://www.postgresql.org/docs/current/static/catalog-pg-class.html),
> yet there is no FK there as far as I can see. Maybe I am missing
> something or there is an interesting story as to why?

It would be tough to do that without creating a lot of circularities.
From the point of view of the low-level catalog manipulation code,
FKs are a high-level feature.

We don't have check constraints on system catalogs, either, for
largely similar reasons.  And while we do take the trouble to mark
some catalog columns NOT NULL, I'm pretty sure that's window
dressing: it's not actually checked on insertions driven from C code.

It'd be an interesting research project to see if such things could
be defined and enforced without getting into infinite recursions.
But even if it could be made to work, we'd probably only consider
enabling the constraints as a debug aid; in a production system,
testing them would just be overhead.

The bigger picture here is that catalog changes are supposed to be
executed by C code in response to DDL commands, and it's the C code
that is charged with maintaining catalog consistency.  Constraints
would be useful if we supported updating the catalogs with direct
SQL manipulations; but we don't really.  You can do that, if you're
a superuser who's willing to take risks, but our policy is that if
you break the catalogs that way you get to keep both pieces.

                        regards, tom lane
 ```
 
The ```pg_catalog``` is not to be messed with by your average user. There are checks that explicitly 
block the user from editing the ```pg_catalog``` tables, as I discovered when I tried to add the foreign key relationships myself.
 
In order to help myself while developing [Postgres Compare](https://www.postgrescompare.com) and others should they ever need to 
figure these links out I duplicated the ```pg_catalog``` of the v10beta into my own schema called ```constrained_pg_catalog```, added the primary and foreign keys as outlined in the documentation 
and made use of a few tools to document and diagram the result:
 
 * [Documentation](https://www.postgrescompare.com/pg_catalog/index.html) produced by [DbDoc](http://www.yohz.com/dbdoc_details.htm) from [Yohz Software](https://www.yohz.com)
 * [Entity Relationship Diagram](https://www.postgrescompare.com/pg_catalog/constrained_pg_catalog.png) produced by [Navicat for PostgreSQL](https://navicat.com/en/products/navicat-for-postgresql)
 
 Various layouts exported using [JetBrains DataGrip](https://www.jetbrains.com/datagrip/)
 * [Circular Layout](https://www.postgrescompare.com/pg_catalog/constrained_pg_catalog_circular.pdf) 
 * [Hierarchical Layout](https://www.postgrescompare.com/pg_catalog/constrained_pg_catalog_hierarchical.pdf) 
 * [Organic Layout](https://www.postgrescompare.com/pg_catalog/constrained_pg_catalog_organic.pdf) 
 * [Orthogonal Layout](https://www.postgrescompare.com/pg_catalog/constrained_pg_catalog_orthogonal.pdf) 
 
And the [pg_dump.sql](https://www.postgrescompare.com/pg_catalog/constrained_pg_catalog.sql) of ```constrained_pg_catalog``` itself.
 
Hopefully this will be a useful reference, let me know if there are any other tools there that could export another useful resource from this schema.
