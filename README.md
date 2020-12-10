# Candidate Assessment
_A potential candidate demonstrates an ability to properly develop a basic Chef cookbook from scratch.  They should know how to take an existing process and automate it with Chef recipes.  They should understand data-driven and modular composable cookbook patterns.  They should understand how to fully validate their cookbook's functionality before attempting to release it/run it on real infrastructure.  Given an existing problem set and non-automated solution, they should understand how to use Chef to model an automated approach that meets the solution requirements by composing a recipe, packaging it in a cookbook, testing it, and verifying intent._

## Scenario 1

### Description
A new cookbook named `my_apache` has been generated for you, and tests have been added to `test/integration/default/default_test.rb`.  Complete the following tasks:
- Finish developing the cookbook such that all the tests pass.

Consider the following constraints:
- Use the `openjdk_install`custom resource from version 8.5.0 of the `java` community cookbook to install Java 11.
- Use two separate node attributes to set the author name and page content (Hello world!) in the HTML file.
- One of the tests uses the `curl` command, which isn't installed by default.  You will need to include installing the `curl` package in your cookbook.
- Use the provided .kitchen.yml file to deploy an Ubuntu 20.04 test instance with vagrant, and verify the provided InSpec tests pass.

### Code for starting point
assessment1/problem

### Code for desired end-point
assessment1/solution

_Please reach out to the Chef Training team with any concerns or clarifications about this assessment. Good luck!_