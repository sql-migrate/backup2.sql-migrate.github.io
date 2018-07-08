---
layout: page
title: Downloads
permalink: /downloads
---

<h3>v1.0.21-alpha (July 8th 2018)</h3>
  - Added new script window

  <ul class="alt">
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','macOS 1.0.21-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-darwin-x64_1.0.21-alpha.zip">macOS</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Windows 1.0.21-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-win32-x64_1.0.21-alpha.zip">Windows</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Linux 1.0.21-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-linux-x64_1.0.21-alpha.zip">Linux</a>
        </h4>
      </li>
  </ul>


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