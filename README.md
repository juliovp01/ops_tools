# ops_tools

# Ansible : Ansible role to install and configure the Operational Tools for Logging, Monitoring and Performance monitoring for RHEL OSP 7.
=========

* Install and configures  an elasticseach, kibana and fluentd host. 
* Sets up the fluentd client on the OpenStack Cluster. 

Requirements
------------

* RHEL 7 for the Logging hosts. 
* RHEL OSP 7 cluster to collect logs from. 
* Valid subscription to : rhel-7-server-openstack-7.0-optools-rpms. 

Role Variables
--------------

* None at the moment.

Author
-------

* Julio Villarreal (julio@linux.com & julio@redhat.com). More at http://www.juliovillarreal.com . 


License
-------

MIT

INSTRUCTIONS
-------------

First, you will need to edit the the prerequisite task file:

ops_tools/logging/tasks/prereqs.yml 

In this file we will define the RHN registration and the RHN Channel, please fill the follow information: 

RHN Registration: 

#activationkey = supply an activation key for use with registration
#channels = Optionally specify a list of comma-separated channels to subscribe to upon successful registration.
#password = Red Hat Network password
#server_url = Specify an alternative Red Hat Network server URL
#state = whether to register (`present'), or unregister (`absent') a system
#username = Red Hat Network username

RHN Channel: (Channel name is: rhel-7-server-openstack-7.0-optools-rpms)

#name = name of the software channel
#password = the user's password
#state = whether the channel should be present or not
#sysname = name of the system as it is known in RHN/Satellite
#url = The full url to the RHN/Satellite api
#user = RHN/Satellite user  

You will also need to change the FQDN for the Logging Host on : 

logging/defaults/main.yml where logging_host is the FQDN of your FluentD server.

fluentd_server_fqdn: logging_host

RUNNING THE PLAYBOOK: 
---------------------

ansible-playbook -i hosts roles/logging/logging.yml


