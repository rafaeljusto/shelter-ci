shelter Cookbook
================
System created for registries to periodically validate and alert domains about DNS or DNSSEC misconfiguration.

For more information check:
https://github.com/rafaeljusto/shelter/wiki.

Requirements
------------

#### packages
- `apt` - shelter needs apt to download the debian package.
- `mongodb` - shelter uses mongodb to store all the data.

Attributes
----------

#### shelter::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['shelter']['base_path']</tt></td>
    <td>String</td>
    <td>Installation location</td>
    <td><tt>'/usr/shelter'</tt></td>
  </tr>
  <tr>
    <td><tt>['shelter']['log_filename']</tt></td>
    <td>String</td>
    <td>Log location</td>
    <td><tt>'var/log/shelter.log'</tt></td>
  </tr>
  <tr>
    <td><tt>['shelter']['server_ip']</tt></td>
    <td>String</td>
    <td>Interface to listen to</td>
    <td><tt>'0.0.0.0'</tt></td>
  </tr>
  <tr>
    <td><tt>['shelter']['db_name']</tt></td>
    <td>String</td>
    <td>Name of the Mongodb database</td>
    <td><tt>'shelter'</tt></td>
  </tr>
  <tr>
    <td><tt>['shelter']['db_uri']</tt></td>
    <td>String</td>
    <td>Address and port of the Mongodb database</td>
    <td><tt>'localhost:27017'</tt></td>
  </tr>
  <tr>
    <td><tt>['shelter']['scan_resolver']</tt></td>
    <td>String</td>
    <td>Resolver to use for DNS queries</td>
    <td><tt>'8.8.8.8'</tt></td>
  </tr>
  <tr>
    <td><tt>['shelter']['scan_resolver_port']</tt></td>
    <td>Integer</td>
    <td>Resolver port to use for DNS queries</td>
    <td><tt>53</tt></td>
  </tr>
</table>

Usage
-----
#### shelter::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `shelter` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[shelter]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Rafael Dantas Justo

Copyright 2014 Rafael Dantas Justo. All rights reserved.
Use of this source code is governed by a GPL
license that can be found in the LICENSE file.
