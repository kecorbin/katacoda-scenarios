
To get you started quickly, we've created a virtualenv and installed pyats.  


You can activate the virtualenv by running the following commands

`source venv/bin/activate`{{execute}}

We've also cloned some sample scripts for you to review. These scripts can also
be found at the following Github repostiory.

https://github.com/CiscoDevNet/pyats-sample-scripts`


## Basic Test Script

Open the `pyats-sample-scripts/basic/basic_example_script.py` in the editor window
and examine it's contents.


## Job Files

In pyATS, the aggregation of multiple testscripts together and executed within
the same runtime environment is called a job.

The concept of Easypy revolves heavily around the execution of such jobs.
Each job corresponds to a jobfile: a standard python file containing the
instructions of which testscripts to run, and how to run them.


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


# Run your the sample test case


Make sure you are in the proper directory

`cd pyats-sample-scripts/basic`{{execute}}

`easypy job/basic_example_job.py`{{execute}}
