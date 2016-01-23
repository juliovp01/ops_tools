
Description : 
============

Ansible role to install and configure the Operational Tools for Logging, Monitoring and Performance monitoring for RHEL OSP 7.

* Install and configures  an elasticseach, kibana and fluentd host. 
* Sets up the fluentd client on the OpenStack Cluster. 


DISCLAIMER:
-----------
This software is provided "as is" and "with all faults" and we do not offer any warranties. If you find a problem, feel free to fix it and contibute back using Github.


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
============

FOR ALL PLAYBOOKS: 
------------------

First, you will need to edit the the prerequisite task file: ops_tools/logging/tasks/prereqs.yml . In this file we will define the RHN registration and the RHN Channel, please fill it with your RHN information.

You will also need to change the FQDN for the Logging Host the playbook file: role/logging/logging.yml : fluentd_server_fqdn: logging_host, more details on the README.md file for the specific role. The same applies to the monitoring playbook.

You will also need to change the host file that you are using, to math the requirements of each individual README file for the roles.


RUNNING THE PLAYBOOKS: 
---------------------


In order to run the installation of the logging role, you need to execute : 

ansible-playbook -i hosts roles/logging/logging.yml

In order to run the installation of the monitoring role, you need to execute : 

ansible-playbook -i hosts roles/monitoring/monitoring.yml

In order to run the installation of the performance monitoring role, you need to execute : 

ansible-playbook -i hosts roles/performance/performance.yml

IMPORTANT: 
==========

This is where to access the Front Ends: 


Kibana: is on Port: 80 of the Logging Host. 
Uchiwa is on Port: 3000 of the Monitoring Host. 
Grafana is on Port: 3100 of the Performance Host.