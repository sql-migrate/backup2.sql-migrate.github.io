---
layout: page
title: Downloads
permalink: /downloads
---

<h3>v1.0.39-beta (February 10th 2019)</h3>
  - Add option to ignore object owner
  - Add filter to exclude tables that match a pattern
  - Fix error while querying pg_partitioned_table

  <ul class="alt">
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','macOS 1.0.39-beta',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-darwin-x64_1.0.39-beta.zip">macOS</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Windows 1.0.39-beta',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-win32-x64_1.0.39-beta.zip">Windows</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Linux 1.0.39-beta',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-linux-x64_1.0.39-beta.zip">Linux</a>
        </h4>
      </li>
  </ul>


<h3>v1.0.38-alpha (February 3rd 2019)</h3>
  - Make comparisons and deployments cancellable
  - Add filter for just different objects

<h3>v1.0.37-alpha (January 23rd 2019)</h3>
  - Fix issue querying pg_partitioned_table pre v10
  - Add detailed and change sql panels

<h3>v1.0.36-alpha (January 20th 2019)</h3>
  - Add option to ignore column order
  - Add option to ignore table partitions


<h3>v1.0.35-alpha (January 8th 2019)</h3>
  - Fix null reference exception when comparing single schemas


<h3>v1.0.34-alpha (January 6th 2019)</h3>
  - Add support for comparing single schemas

<h3>v1.0.33-alpha (December 31st 2018)</h3>
  - Fixed issue where script window would not return with result
  - Fixed issue with reading sequences on versions < 10
  - Added icons to comparison view

<h3>v1.0.32-alpha (December 26th 2018)</h3>
  - Added comparison of access methods, casts, conversions, event triggers, foreign data wrappers, operator families
  - Added comparison of tablespaces, foreign servers, text search parsers, text search templates, text search configs
  - Added comparison of text search dictionaries, user mappings, publications, subscriptions, statistics, policies
  - Added comparison enums, collations, sequences, operators and foreign tables
  - Fixed issue showing UTC time on artifacts instead of local time

<h3>v1.0.31-alpha (November 22nd 2018)</h3>
  - Fix PostgreSQL 9.4

<h3>v1.0.30-alpha (November 19th 2018)</h3>
  - Improve scripting of functions
  - Add comparison of procedures for Pg 11

<h3>v1.0.29-alpha (October 18th 2018)</h3>
  - Added comparison before and after deployment to UI
  - Fix bug where columns were not being compared
  - Fix bug where comparison results were being duplicated in the UI

<h3>v1.0.28-alpha (October 10th 2018)</h3>
  - Added real time comparison results feature

<h3>v1.0.27-alpha (October 1st 2018)</h3>
  - Added option to ignore whitespace differences when comparing functions
  - Added more detailed progress reporting
  - Added deployment of functions
  - Fixed bug where serial columns were considered different due to their default value differing

<h3>v1.0.26-alpha (September 23rd 2018)</h3>
  - Added dropdown selects to filter fields on comparison screen
  - Added "Most Recent" and "Previous" to comparison and deployment list
  - Added alter column datatype, default, statistics, not null, storage
  - Added alter table inherits, owner, comments, cluster
  - Changed "Deployment..." CTAs to "Script.." so it's not so scary :)
  - Improved performance of comparison and deployments list fetching
  - Fixed issue where removing system triggers at snapshot time would cause an exception later when comparing

<h3>v1.0.25-alpha (September 9th 2018)</h3>
  - Added searchable/sortable table to the comparison and deployments screens
  - Fixed bug where self-referencing foreign keys were producing circular dependencies
  - Fixed bug where indexes were being created before the table they depend on
  - Fixed bug where removing extension types for comparison was causing a crash (KeyNotFoundException) when those types were needed for a table definition later

<h3>v1.0.24-alpha (September 3rd 2018)</h3>
  - Performance improvements
  - Added progress reporting to notifications
  - Defaults and placeholders added to new environment and new project forms
  - Removed snapshots tab

<h3>v1.0.23-alpha (August 26th 2018)</h3>
  - Replace tables with cards for environments, projects, comparisons, deployments and snapshots
  - Added schema name to comparison and new script pages
  - Fixed v11 snapshotting due to removed attributes

<h3>v1.0.22-alpha (August 19th 2018)</h3>
  - Added deployment step to new script window
  - Added support for Domains, Extensions and Materialized Views
  - Added ordering script by dependencies

<h3>v1.0.21-alpha (July 8th 2018)</h3>
  - Added new script window

<h3>v1.0.20-alpha (June 17th 2018)</h3>
  - Added editable projects
  - Added navigate via notifications

<h3>v1.0.19-alpha (June 11th 2018)</h3>
  - Added projects
  - Added editable environments

<h3>v1.0.18-alpha (May 17th 2018)</h3>
  - Improved error reporting

<h3>v1.0.17-alpha (May 7th 2018)</h3>
  - Changed: buttons now available alongside each other
  - Fixed: constraint indexes appearing in comparison
  - Changed: improved performance of snapshots and comparison

<h3>v1.0.16-alpha (April 29th 2018)</h3>
  - Added: comparison of Composite Types
  - Fixed: quoted identifiers not being used

<h3>v1.0.15-alpha (April 21st 2018)</h3>
  - Added: comparison of Schemas
  - Fixed: support for PostgreSQL 9.4
  - Fixed: toast tables and indexes appearing in comparison
  - Changed: removed db objects other than connected database

<h3>v1.0.14-alpha (April 17th 2018)</h3>
  - Added: comparison of Indexes

<h3>v1.0.13-alpha (April 15th 2018)</h3>
  - Added: comparison of Roles/Users

<h3>v1.0.12-alpha (April 12th 2018)</h3>
  - Fixed: function comparison failing when trying to compare a function with no arguments


<h3>v1.0.11-alpha (April 12th 2018)</h3>
  - Added: basic Function comparison and snapshotting
  - Changed: excluded pg_catalog procedures from queries for better performance

<h3>v1.0.10-alpha (April 10th 2018)</h3>
  - Fixed: SchemaName throwing an error on script compare
  - Fixed: incorrect default for columns

<h3>v1.0.9-alpha (April 8th 2018)</h3>
  - Fixed: objects being matched from different schemas
  - Fixed: invisible differences due to different schema owner
  - Fixed: ordering of differences
  - Added: muted text for identical objects
  - Added: improved performance for large comparisons

<h3>v1.0.8-alpha (April 5th 2018)</h3>
  - Fixed: 'System.InvalidCastException: Object must implement IConvertible.' error

<h3>v1.0.7-alpha (April 2nd 2018)</h3>
  - Added: Persistence of data across builds
  - Added: macOS build signing
  - Fixed: Triggers appearing in every schema
  - Fixed: 'Can't convert infinite timestamptz values to DateTime' error
  - Fixed: macOS build not saving environments

<h3>v1.0.6-alpha (March 27th 2018)</h3>
  - Added: better scripting of Triggers
  - Added: basic comparison of Triggers
  - Fixed: start comparison from dropdown menu on list of environments

<h3>v1.0.5-alpha (March 26th 2018)</h3>
  - Fixed: attempting to read from pg_authid throwing an error, replaced with pg_roles
  - Added: snapshot and comparison of Views
  - Added: basic snapshot of Triggers
  - Added: ability to report an error via email

<h3>v1.0.4-alpha (March 21st 2018)</h3>
  - Fixed: Internal triggers (to support constraints) causing tables to appear as different

<h3>v1.0.3-alpha (March 19th 2018)</h3>
  - Fixed: Test connection button remains checked after closing New Environment modal
  - Added: Logging of exceptions during snapshot, comparison, script and deploy to file

<h3>v1.0.2-alpha (March 18th 2018)</h3>
  - Fixed: Comparison an snapshot tasks not informing the UI when an error occured.
  - Fixed: Phantom snapshots appearing as artifacts of comparisons.
  - Changed: Updated notifications to show a progress bar for the running task.

<h3>v1.0.1-alpha (March 16th 2018)</h3>
  - Fixed: Comparisons and snapshots seemingly running forever. This was caused by an issue reading pg_catalog.pg_index where indpred was not NULL. The app would throw an exception but not inform the
  ui that the task had failed.

<h3>v1.0.0-alpha (March 14th 2018)</h3>
