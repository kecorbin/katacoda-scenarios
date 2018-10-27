

We will start by cloning down a repo that contains some basic test case examples


`git clone https://github.com/CiscoDevNet/pyats-sample-scripts`{{execute}}


## Test Scripts

Open the pyats-sample-scripts/basic/basic_example_script.py in the editor window
and examine it's contents.


## Job Files

Open the pyats-sample-scripts/basic/job/basic_example_job.py in the editor window
and examine it's contents.


## easypy

Easypy provides a standardized runtime environment for testscript execution in pyATS.
It offers a simple, straight-forward way for users to aggregate testscripts together
into jobs, integrates various pyATS modules together into a collectively managed ecosystem,
and archives all resulting information for post-mortem debugging.

# Create a virtualenv

easypy requires a virtualenv for proper execution.


# Run your the sample test case


Make sure you are in the proper directory

`cd pyats-sample-scripts/basic`{{execute}}

`easypy job/basic_example_job.py`{{execute}}
