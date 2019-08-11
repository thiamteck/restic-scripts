Restic scripts (Windows)
=======================================
Collection of scripts for Windows that wrap the Restic backup tool for local repository.

Pre-requisite
---------------
1. [Scoop](https://scoop.sh/)
2. [Restic](https://restic.net/)
    ``` console
    scoop install restic
    ```
3. Create local Restic repository (if you do not have a repository yet):
    ``` console
    restic init --repo /path/to/repo
    ```
4. Prepare excludes list:
    ``` console
    create_restic_ignore.bat
    ```
5. You may then review the `.resticignore` and edit based on your preference

Steps:
--------
1. (Optional) Enter password for the session:
    ``` console
    session_login.bat
    ```
2. Run command to backup:
    ``` console
    restic_backup.bat /path/to/source /path/to/repo
    ```

Extra:
-------
1. if you would like to exclude a file pattern only when there is a file exists in same folder (i.e. only exclude `target` folder when `pom.xml` exists), you may run command below:
    ``` console
     dir /b/s /path/to/source | findstr "\\pom.xml" | optional\findrepl.bat "pom.xml" target >> .resticignore
    ```

Credits:
------------
- `optional\findrepl.bat` is from [Aicini@dostips.com](https://www.dostips.com/forum/memberlist.php?mode=viewprofile&u=2923)
