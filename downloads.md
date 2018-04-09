---
layout: page
title: Alpha downloads
permalink: /downloads
---
Unzip the file and run the PostgresCompare executable contained in the resulting folder. Hit an error? Send me a pg_dump of your schema so I can recreate and fix it! <a href="mailto:alpha@postgrescompare.com">alpha@postgrescompare.com</a>

<h3>v1.0.9-alpha (April 8th 2018)</h3>
  - Fixed: objects being matched from different schemas
  - Fixed: invisible differences due to different schema owner
  - Fixed: ordering of differences
  - Added: muted text for identical objects
  - Added: improved performance for large comparisons
  <ul class="alt">
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','macOS 1.0.9-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-darwin-x64_1.0.9-alpha.zip">macOS</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Windows 1.0.9-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-win32-x64_1.0.9-alpha.zip">Windows</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Linux 1.0.9-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-linux-x64_1.0.9-alpha.zip">Linux</a>
        </h4>
      </li>
  </ul>

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