---
layout: post
title: The path to beta
---

Its been a little over a month since the alpha of PostgresCompare started and, thankfully, I've received a lot of feedback as to how I can improve the application. To help clear up how I'm going to get from alpha to beta and beyond I'm detailing here the work I am going to tackle before taking that next step.

#### Database object types

1.0.0-alpha just understood how to compare tables, and a little about how to deploy the differences. Since then I've added views, functions, triggers, users/roles and 1.0.14-alpha will include indexes. The remaining objects to add before beta are schemas and types.

Once the basic support is there it will allow alpha testers to see where the holes are and I intend to take another pass through each type, adding any remaining clauses that I've missed and addressing the deployment story for each.

#### Performance

PostgresCompare writes a lot of JSON to disk when saving comparison data. People who have tried to compare medium to large schemas have experienced slow performance as a result of the serialization and deserialization that goes on in the background. I will be removing a lot of the unneccesary information that's contained in the JSON and, if necessary, adding some custom JSON readers/writers to reduce the time spent in the reflection library figuring out the fields for particular types.

#### User interface improvements

As it stands the user interface is quite bare bones and offers little help in getting people started. I will be refactoring the UI to have the idea of Projects and Environments at the top level. A project will consist of a couple of environments and all the comparisons, snapshots and deployments created within that context.

That gives a broad overview of what to expect over the next little while. Thank you for your feedback so far. Keep it coming!