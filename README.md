DISA STIG for Red Hat Enterprise Linux 8
=========

Visit official RedHat github at https://github.com/RedHatOfficial/ansible-role-rhel8-stig.git

See the OpenSCAP project for more details on Ansible playbook generation at [https://github.com/OpenSCAP/openscap](https://github.com/OpenSCAP/openscap)

see the ComplianceAsCode project at [https://github.com/ComplianceAsCode/content](https://github.com/ComplianceAsCode/content)

Requirements
------------

- Ansible version 2.9 or higher


### GENERAL INFORMATION

This playbook will have two components 
1. To apply the server hardenening against the STIG rules

*sudo ansible-playbook -i inventory.ini playbook.yml*

2. To Scan openscap against the security standards and generate the report.

*sudo ansible-playbook -i inventory.ini stig_scan.yml*
