To configure nfs network share server run 

`ansible-playbook playbooks/nfs.yml --user root --ask-pass`

To test without modifying effected hosts run

`ansible-playbook playbooks/site_careas.yml --user root --ask-pass --check --diff`