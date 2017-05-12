---
layout: post
title: Using the system catalogs to get column information
---

A question came up on the pgsql-general mailing list regarding how to [obtain column information](https://www.postgresql.org/message-id/CA%2BFnnTzb%2Bx6nh%3DRhwL6B0%3Dvnj6w9sTwn2jLD4YGGQA5Z3u5KbQ%40mail.gmail.com) from a PostgreSQL database. Finding the definition of database objects is something I spend a lot of time doing when working on the comparison and scripting engines for [Postgres Compare](https://www.postgrescompare.com).

PostgreSQL stores all the database object defining information in what are called the [system catalogs](https://www.postgresql.org/docs/9.6/static/catalogs.html). These catalogs can be queried directly to get an idea as to the structure of the database one is connected to and also some information about the cluster as a whole. In addition, the system catalogs are the source of truth for the [information schema](https://en.wikipedia.org/wiki/Information_schema), an ANSI standard set of views documentating tables, columns etc.

While the information schema is useful for standardisation it can be difficult or inefficient at times to wrangle the data you need if the views don't already match your requirements. In those situations it can be useful to drop down to the system catalogs directly. The system catalog structure is what Postgres revolves around so it is the terrain to the information schema's map.

Here is the query I provided linking columns to tables, types and constraints in order to obtain the column name, data type, length and the type of table constraint it appears in if any.

    SELECT columns.attname as name,
           data_types.typname as type,
           columns.attlen as length,
           columns.attnotnull as not_null,
           constraints.contype
    FROM pg_attribute columns
    INNER JOIN pg_class tables 
    ON columns.attrelid = tables.oid
    INNER JOIN pg_type data_types 
    ON columns.atttypid = data_types.oid
    LEFT JOIN pg_constraint constraints
    ON constraints.conrelid = columns.attrelid 
    AND columns.attnum = ANY(constraints.conkey)
    WHERE tables.relname = 'films' 
    AND columns.attnum > 0;

It can be much easier, and better documented, to deal directly with the system catalogs than trying to decipher the often messy views of the information schema. Something else I learned while figuring this out is that one can check for the presence of a value in an array using the [ANY syntax](https://www.postgresql.org/docs/current/static/functions-comparisons.html). Very useful since a lot of the system catalogs use int arrays to refer to other objects instead of a row per reference.
