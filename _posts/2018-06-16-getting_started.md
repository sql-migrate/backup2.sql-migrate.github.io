---
layout: post
title: Getting started with Postgres Compare
---

#### 1. Set up your environments

Environments represent the different databases that you need Postgres Compare to talk to. Add an environment by clicking on the "Environments" tab, followed by the "New Environment" button. Once you've filled in the connection details and tested that Postgres Compare can connect to the database, click "Save".

<img width="700px" alt="Create environment" src="https://www.postgrescompare.com/images/create_environment.png">

#### 2. Create a project

A project matches together 2 environments that are to be compared. Create a project by clicking on the "Projects" tab, followed by the "New Project" button. Choose the environments to be compared, give the project a name and click "Save". The project appears in the projects list.

<img width="700px" alt="Create project" src="https://www.postgrescompare.com/images/create_project.png">

#### 3. Run a comparison

Click on a project from the projects list to view the project details page. The project details page allows you to run and view comparisons, create scripts and deploy changes.

Start a new comparison by clicking the "Compare" button on the comparisons tab.

<img width="700px" alt="Run comparison" src="https://www.postgrescompare.com/images/running_comparison.png">

When the comparison is finished, click on the notification to view the result and explore any differences.

<img width="700px" alt="View comparison" src="https://www.postgrescompare.com/images/comparison.png">

#### 4. Create an update script

The new script window helps you create an update script. Click the "Deployment..." button to open the window and preview your script.

<img width="700px" alt="Create script" src="https://www.postgrescompare.com/images/new_script_preview.png">

#### 5. Deploy the changes

A project's deployments tab records the result of running a script via Postgres Compare. While viewing a script, click the "Deploy...." button to deploy the changes.

<img width="700px" alt="Deploy script" src="https://www.postgrescompare.com/images/deployment.png">
