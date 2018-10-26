
## Import Libraries

First we need to import the relevant libraries we will be using for this
exercise

<pre class="file" data-filename="genie-intro.py" data-target="replace">
from ats.topology import loader
from genie.conf import Genie
from genie.abstract import Lookup
from genie.libs import ops
</pre>


## Define a function to perform counter lookup

Reusability is of primary concern to pyATS (and python in general) as we
will likely want to run this against multiple devices, let's make a function which
will return interface counter info given a `Device` object.  

To accomplish this, we are going to use `Interface` object from [genielibs](https://github.com/CiscoTestAutomation/genielibs)

For more information about the schema of this object see here:
https://pubhub.devnetcloud.com/media/pyats-packages/docs/genie/genie_libs/#/models/interface


<pre class="file" data-filename="genie-intro.py" data-target="append">

def get_interface_counters(dev):
    """
    returns parsed and normalized interface counters
    """
    # Device must be connected so that a lookup can be performed
    if not dev.is_connected():
        dev.connect()

    # Load the approprate platform parsers dynamically
    abstract = Lookup.from_device(dev)

    # Find the Interface Parsers for this device
    # The directory syntax is <feature>.<feature.<Feature>
    # here the class is capitalized but the directory/files arent.
    intf = abstract.ops.interface.interface.Interface(dev)

    # Parse required commands, and return structured data
    intf.learn()
    return intf.info

</pre>

## Configure Testbed

All that is left is to pass one of the devices from our testbed to the function
we just created.

<pre class="file" data-filename="genie-intro.py" data-target="append">
from ats.topology import loader
testbed = '/root/pyats/devnet_sandbox.yaml'
testbed = loader.load(testbed)
testbed = Genie.init(testbed)
</pre>

**Note:** A genie testbed and a pyATS are not the same thing, thus we send the
pyATS testbed (from `loader.load`) to `Genie.init` so that it can be extended with the
necessary properties.


## Collect some data

Now we simply pass our device object to the function that we created, and
we'll have structured data for all of the interface counters on the device.

<pre class="file" data-filename="genie-intro.py" data-target="append">
csr = testbed.devices['csr1000v']
csr_interface_counters = get_interface_counters(csr))
print(csr_interface_counters)
</pre>


## Run your code!

`python3 genie-intro.py`{{execute}}

## Normalized Data models

Keep in mind one of the benefits of Genie is that it can normalize platform differences
for us, so to demonstrate this we will parse counters for both our NX-OS as well as our
IOS device.  The resulting data structures will be the same, even though the output, and even
the show commands themselve to gather the data may be different across platforms.

<pre class="file" data-filename="genie-intro.py" data-target="append">
nx = testbed.devices['nxos']
nx_interface_counters = get_interface_counters(nx))
print(nx_interface_counters)
</pre>