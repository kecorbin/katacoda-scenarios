
This scenario is designed to be a quick introduction to Test Cases within the
pyATS framework, for detailed information, you should also check out the documentation located here:
https://pubhub.devnetcloud.com/media/pyats/docs/aetest/index.html


# AETest

AEtest (Automation Easy Testing) is the standard test engineering automation harness. It offers a simple and straight-forward way for users to define, execute and debug testcases and testscripts, serving as a basis for other testscript templates & engines.


AEtest is available as a standard component (aetest) in pyATS in an effort to standardize the definition and execution of testcases & testscripts. Implemented fully in Python, pyATS aetest is designed to leverage the full benefits of Python language’s object-oriented capabilities.

The architectural design of AEtest module drew inspiration from Python unittest, a native Python unit-testing infrastructure, and as well pytest, an open-source, community-supported Python testing tool. Those that are familiar with the above should be able to quickly adopt AEtest with little effort.

## Features

* straight-forward, pythonic user experience (object-oriented design)
* Common Setup with Subsections
* Testcases with setup/tests/cleanup
* Common Cleanup with Subsections
* highly modular and extensible
* Testcase inheritance
* dynamic testcase generation
* custom runner for user defined testable objects
* customizable reporter
* enhanced looping & testcase parametrization
