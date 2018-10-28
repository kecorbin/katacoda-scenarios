

In this exercise we will combine the power of the pyATS testing framework, with
the parsing capabilities that were introduced in [Introduction to Genie](https://katacoda.com/kecorbin/scenarios/genie-intro)
where we showed you how to use Genie parsers to normalize interface counters.
In this step, we will introduce a small amount of python code into a Test Case to fully leverage the power of the pyATS framework.



## CRC Check Test Script

For this test, we will assume that CRC errors are a condition which are
unacceptable, and therefore, if any CRC errors are present on any interface
the test will fail.


Open the `pyats/CRC_Count_check.py` file in the editor window
and examine it's contents.

Review the following sections

### Common Setup

In the common setup code, we are simply making sure that we can connect
to every device in the testbed.  

Any attributes that get set on `self.parent` will be available to all
other test cases.  

At any point in your code you can call `self.passed` or `self.failed` to
end the test and record the result.  

Make sure you always create a logger instance, as this is a good way
to document more information during the test run. There are also some
useful utilities in `ats.log.utils` such as `banner()` that make the
logging results more friendly.

### CRC_count_check

This is our testcase.  The testcase is divided into two methods decorated with the `aestest.test` decorator.

#### learn_interfaces

This test is that we can successfully parse interfaces on all of our testbed
devices.  We also initialize a new dictionary `self.all_interfaces` which will be used to store the interface data from all of the devices, this data will be used in the next step.


#### check_CRC

In this step we are simply iterating over the `self.all_interfaces` dictionary that was created in the previous test. While we're doing so we also take the
opportunity to leverage another python package called [tabulate](https://pypi.org/project/tabulate/) which allows us to log a nice
table of all of the interface counters as well.   Remember, pyATS is python,
you can use any of your existing libraries that you'd like.


#### common_cleanup

Really not much to do here, just logging a message that we're done.


##
