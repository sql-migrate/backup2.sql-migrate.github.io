---
layout: page
title: Alpha builds for download
permalink: /downloads
---
-  Unzip the file and run the PostgresCompare executable contained in the resulting folder.
- The macOS build is being blocked by gatekeeper, people report not being able to save entities. Until the build is signed you can get around this by running 'xattr -d com.apple.quarantine *' in the app directory

<h3>v1.0.1-alpha (March 16th 2018)</h3>
  - Fixed: Comparisons and snapshots seemingly running forever. This was caused by an issue reading pg_catalog.pg_index where indpred was not NULL. The app would throw an exception but not inform the
  ui that the task had failed.
  <ul class="alt">
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','macOS 1.0.1-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-darwin-x64_1.0.1-alpha.zip">macOS</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Windows 1.0.1-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-win32-x64_1.0.1-alpha.zip">Windows</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Linux 1.0.1-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-linux-x64_1.0.1-alpha.zip">Linux</a>
        </h4>
      </li>
  </ul>

  <h3>v1.0.0-alpha (March 14th 2018)</h3>
  <ul class="alt">
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','macOS 1.0.0-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-darwin-x64_1.0.0-alpha.zip">macOS</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Windows 1.0.0-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-win32-x64_1.0.0-alpha.zip">Windows</a>
        </h4>
      </li>
      <li>
        <h4>
          <a class="post-link"
          onclick="var that=this;ga('send', 'event','Download','Linux 1.0.0-alpha',this.href);setTimeout(function(){location.href=that.href;},200);return false;"
          href="http://downloads.postgrescompare.com/builds/PostgresCompare-linux-x64_1.0.0-alpha.zip">Linux</a>
        </h4>
      </li>
  </ul>
