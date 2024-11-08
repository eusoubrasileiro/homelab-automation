To configure nfs network share server run 

`ansible-playbook playbooks/nfs.yml --user root --ask-pass`

To test without modifying effected hosts run

`ansible-playbook playbooks/site_careas.yml --user andre --ask-pass --ask-become --check --diff`

Some servers don't accept user root therefore use user andre and --ask-become