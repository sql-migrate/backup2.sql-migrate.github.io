---
layout: post
title: A summary of database version control options
---

There was a question recently on pgsql-general about [Stored procedure version control](https://www.postgresql.org/message-id/nl0th7%247q8%241%40pye-srv-01.telemetry.co.uk). The question was: 

```
Elsewhere, somebody was asking how people implemented version control 
for stored procedures on (MS) SQL Server.

The consensus was that this is probably best managed by using scripts or 
command files to generate stored procedures etc., but does anybody have 
any comment on that from the POV of PostgreSQL?
```

to which I posted the following response as a summary of the options available.

I can't comment from the POV of those who represent Postgres, but I used to work for a company who specialised in change management for database products, SQL Server and Oracle in particular. There are at least two approaches. The migrations approach and the state based approach.

For migrations you create up and down scripts/code fragments to move the database through versions over time, committing them to a source control system as you go. Usually the database will contain some tables to keep track of the current live version.

With the state based approach you just store the DDL for each object in the source control system. You can see how an object changes over time by just inspecting one file. You can automate the scripting process or use one of the diffing tools that supports comparing to DDL directly.

State based handles merge conflicts better than migrations. Migrations handles data changes better than state based. Migrations also is better if you are deploying to multiple production databases that may all be on different versions.

If your database contains a lot of logic or you have a large distributed team you are more likely to have merge issues and so state based is probably the better choice. Smaller team, less logic and a production environment where you need to be able to update from any version reliably? Migrations is a good choice.

Additionally you don't have to stick with one or the other. In the early days while you have little data to worry about you might use the static approach and then switch to migrations. You just pick a baseline to start from and carry on from there.
