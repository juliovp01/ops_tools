Role Name
=========

This is a role to install and configure Elasticsearch + FluentD + Kibana on RHEL 7 to collect logs from a RHEL OSP Installation.

Requirements
------------

This is a list of requirements for this role: 
- RHEL 7.X
- Valid subscription for the RHEL install. 
- Subscription to  rhel-7-server-openstack-7.0-optools-rpms available. 

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

MIT

Author Information
------------------

The author for this role is Julio Villarreal, to contact him you could email julio@linux.com or julio@redhat.com. More info at : http://www.juliovillarreal.com.
