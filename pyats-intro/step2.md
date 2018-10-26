# pyATS testbed

  The testbed file is a [YAML](https://en.wikipedia.org/wiki/YAML) (short for “YAML Ain’t Markup Language”
  or “Yet Another Markup Language”), is a human-readable data serialization format that is designed to be both
  human readable and machine readable.

  YAML is indentation & white space sensitive. Its syntax maps directly to most common
  datastructures in Python, such dict, list, str etc.

  Your testbed file contains definitions of various things in the environment routers, switches, links,
  external servers, or traffic generators.

  A simple definition of a router might look like

  ```
  devices:

    ios1: <-- device name
      alias: ios1
      connections:

        defaults:
          class: unicon.Unicon  
        console:
          ip: 10.10.20.160  
          protocol: telnet
          port: 17000
  ```


For this tutorial we've provided a testbed yaml file that uses DevNet always on
sandboxes.

You can view this file by running

`cat /root/pyats/devnet_sandbox.yaml`{{execute}}


A more comprehensive testbed sample can be found
<a href="https://pubhub.devnetcloud.com/media/pyats/docs/topology/schema.html#production-yaml-schema" target="_blank">
here
</a>
you should take a few minutes to review some of the additional options that can be configured for a given testbed.
