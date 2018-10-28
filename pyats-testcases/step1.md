
To get you started quickly, we've created a virtualenv and installed pyats.  


You can activate the virtualenv by running the following commands

`source venv/bin/activate`{{execute}}

We've also cloned some sample scripts for you to review. These scripts can also
be found at the following Github repostiory.

https://github.com/CiscoDevNet/pyats-sample-scripts`


## Basic Test Script

Open the `pyats-sample-scripts/basic/basic_example_script.py` in the editor window
and examine it's contents.

The are three main parts to a test script - Common Setup, Test case(s),

Full documentation on this topic is available [here](https://pubhub.devnetcloud.com/media/pyats/docs/aetest/structure.html)

![test script image](https://pubhub.devnetcloud.com/media/pyats/docs/_images/script_structure.png)


### Common Setup

CommonSetup is where all the common configurations, prerequisites and initializations
shared between the script’s testcases should be performed.
This includes but is not limited to the following:

* check the validity of script inputs (arguments)
* connect to all testbed devices & check that they are ready
* configure/bring up the device interface and/or topology
* setup/load base configuration common/shared between all testcases
* setup dynamic looping of testcases/sections based on current environment
* etc

### Test Case

Testcase is a container/collection of smaller tests. Testcases are the workhorse of every testscript,
carrying out the assessments that determines the quality of the product under scrutiny.
Each testcase may have its own Setup Section and Cleanup Section, and an arbitrary number of
smaller Test Sections.


### Common Cleanup

CommonCleanup is the last section to run within each testscript. Any configurations,
initializations and environment changes that occured during this script run should be cleaned
up (removed) here. Eg, the testbed/environment should be returned to the same state as
it was before the script run. This includes but is not limited to:

* removal of all CommonSetup changes in their appropriate, reversed order
* removal of any lingering changes that were left from previous testcases
* returning all devices & etc to their initial state
* etc

**Note:** CommonCleanup should be catch-all: regardless of whether previous sections passed or failed,
 or whether they cleaned up after themselves, this section should catch-it-all,
 and return the testbed/environment to its original state.


### Job Files

In pyATS, the aggregation of multiple testscripts together and executed within
the same runtime environment is called a job.

The concept of Easypy revolves heavily around the execution of such jobs.
Each job corresponds to a jobfile: a standard python file containing the
instructions of which testscripts to run, and how to run them.

Full documentation on Job files can be found [here](https://pubhub.devnetcloud.com/media/pyats/docs/easypy/jobfile.html)

Open the `pyats-sample-scripts/basic/job/basic_example_job.py` in the editor window
and examine it's contents.


## Easypy

Easypy provides a standardized runtime environment for testscript execution in pyATS. It offers a simple, straight-forward way for users to aggregate testscripts together into jobs, integrates various pyATS modules together into a collectively managed ecosystem, and archives all resulting information for post-mortem debugging.

### Easypy Features

* Jobs: aggregation of multiple testscripts into one job.
* TaskLog: stores all runtime log outputs to TaskLog.
* E-mail Notification: emails the user result information upon finishing.
* Multiprocessing Integration: executes each jobfile Task in a child process, and configures the environment to allow for hands-off forking.
* Clean: clean/brings up the current testbed with new images & fresh configuration.
* Plugins: plugin-based design, allowing custom user injections to alter and/or enhance the current runtime environment.

Full documentation on Easypy can be found [here](https://pubhub.devnetcloud.com/media/pyats/docs/easypy/index.html)

# Run your the sample test case


Make sure you are in the proper directory

`cd pyats-sample-scripts/basic`{{execute}}

`easypy job/basic_example_job.py`{{execute}}


After executing the test job, spend some time reviewing the test script again.  
Spend a few minutes correlating the output you see during test execution, with the
sections of the script.
