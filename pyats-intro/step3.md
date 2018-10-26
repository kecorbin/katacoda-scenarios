# Loading testbed


One of the first things you need to do in your python script
is load your testbed file

We will use the loader function to accomplish this

<pre class="file" data-filename="app.js" data-target="replace">
from ats.topology import loader
testbed = path + './katacoda-scenarios/pyats-intro/scriptsdevnet_sandbox.yaml'
testbed = loader.load(testbed)
</pre>


Now we have a `testbed` object which represnts the entire testbed.  
we can select devices or links from this testbed to do things to.  
For starters, let's connect to a device and run some commands.


testbed = path + '/public_testbeds/devnet_sandbox.yaml'
testbed = loader.load(testbed)


<pre class="file" data-filename="app.js" data-target="replace">
csr = testbed.devices['csr1000v']
csr.connect()
csr.execute('show version')
</pre>