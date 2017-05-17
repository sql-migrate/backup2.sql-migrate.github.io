---
layout: post
title: The guiding principles behind Postgres Compare
---

I believe that while listening to customer feedback and giving the people what they want can be of great benefit to the short term development of an application, it is also important to lay out some key principles that really define the essence of the product. Key principles help in many ways. From a users point of view the application has an identity and a unique look and feel. Internally the principles can be used as a guide for decision making. 

Here are the principles that lie behind Postgres Compare. While some of them might seem obvious it can be useful to write them down lest we forget:


* Fast - The application should be capable of performing large comparisons quickly. When it can't be quick it should _at least_ be responsive, no freezing or locking out the user while tasks are being completed.
* Efficient - No wasted effort. Work should be saved automatically so it can be re-used. Hit an error while querying the database? Show the partial result. Application quit? Allow the user to continue where they left off on re-start.
* Accurate - Attention to detail where it matters. Report differences at the most granular level possible.
* Intuitive - PostgreSQL is not SQL Server, Oracle or MySQL. Understand how it and its users work so Postgres Compare can do what Postgres users expect.
* Useful - Focus on making the useful features great and cutting the rest. Code that needs to connect to the database directly belongs in the desktop app. Only features that benefit from collaboration, storage or compute power belong in the web app.
