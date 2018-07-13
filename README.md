
| Variable Group  | Variable |  Default Value | Comment |
| ------------- | ------------- | ------------| ------- |
| base          |  admin_group  | 'Support'     | Support group name (for support users on the system)        |
| global_config | sshd_config_file  | True    | Whether Ansible should modify the SSHD config file       |
| global_config | sshd_service_restart  | True    | Whether Ansible should restart SSHD after making a config file change     |
| global_config | enable_repo_gpgcheck  | True    | Whether Ansible shoudl force GPG Checks of repositories |
| global_config | enable_epel_repo  | True    |         |
| global_config | enable_selinux  | True    |         |
| global_config | selinux_restart  | True    | Whether a reboot should be triggered after SELinux is done being configured  |
| global_config | configure_auditd  | True    |         |
| global_config | plesk_server  | True    |  Allows exceptions to SSHD for Plesk |
| | | | | |
| sshd_config | PermitEmptyPasswords  | 'no'    |         |
| sshd_config | Protocol  | '2'    |         |
| sshd_config | PasswordAuthentication  | 'no'    |         |
| sshd_config | PermitUserEnvironment  | 'no'    |         |
| sshd_config | HostbasedAuthentication  | 'no'    |         |
| sshd_config | Cipehers  | 'aes128-ctr,aes192-ctr,aes256-ctr'    |         |
| sshd_config | Banner  | '/etc/issue'    |         |
| sshd_config | ClientAliveInterval  | 600    |         |
| sshd_config | IgnoreRhosts  | 'yes'    |         |
| sshd_config | PrintLastLog  | 'yes'    |         |
| sshd_config | PermitRootLogin  | 'no'    |         |
| sshd_config | IgnoreUserKnownHosts  | 'yes'    |         |
| sshd_config | MACS  | 'hmac-sha2-256, hmac-sha2-512'    |         |
| sshd_config | GSSAPIAuthentication  | 'no'    |         |
| sshd_config | KerberosAuthentication  | 'no'    |         |
| sshd_config | StrictModes  | 'yes'    |         |
| sshd_config | UsePrivilegeSeparation  | 'yes'    |         |
| sshd_config | Compression  | 'delayed'    |         |
| sshd_config | PubKeyAuthentication  | 'yes'    |         |
| | | | | |
| packages | automate_security_packages  | True    |    Adds a cronjob for `yum update --security`     |
| packages | security_packages_log_dir  | "/var/log/security-packages/"    |    Where to log `yum update --security` output     |
| packages | security_packages_log_rotate_content | See variables | The logrotate content to add for security package logs |
| | | | | |
| aws | verify_awscli | True | Installs awscli package if not present |
| aws | configure_cloudwatch | True | |
