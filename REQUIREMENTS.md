Basic outline of requirements.  We can assign priorities as we go, based on what you need most + soonest.

- **Automated basic Gitlab install**
-- **optional configuration file for the parameters you'd like to configure**

- Automated GitLab configuration for users
 - Should target the local GitLab server (same config for both?)
 - **Should work at the minimum for the git commandline client on RasPi**
  - Should provide an automated, level based commit and push
   - Level 0 = full automation
   - **Level 1 = automated push, but manual commit**
   - Level 2 = manual push and commit

- Tooling around user management
 - Creation
 - Deletion
 - Password management
 - **Key management**

Key objectives for a first alpha version would be:
- Users set config file with server URL & their user name and base dir for backup.
- script on Pi to connect and configure key.
- On first run script pulls down contents of an existing backup repo
- Command that allows them to commit and push changes
- Command that allows them to sync any upstream changes (maybe, not sure)
