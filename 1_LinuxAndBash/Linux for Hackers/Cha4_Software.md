#### Adding and Removing Software
- Each Linux distro will have its own package manager tool
    - Debian based distros use apt (Advanced Packaging Tool)
    - Fedora based distros use dnf (Dandified YUM)
    - Arch based distros use pacman (Package Manager)

#### Example Commands - Debian/Ubuntu
- apt-cache search <package name> - search repository for a package
- apt-get install <package name> - install a package
- apt-get remove <package name> - remove a package
     - there will be a confirmation message when installing or removing a package - [Y/n]
- apt-get purge <package name> - removes the configuration files along with the package
- apt-get update - refreshes the list of software available in the repository
- apt-get upgrade - upgrdes all apps installed on the system from the repository

#### Example Commands - Red Hat/Fedora
- dnf search <package name> - search repository for a package
- dnf install <package name> - install a package
- dnf remove <package name> - remove a package
     - there will be a confirmation message when installing or removing a package - [Y/n]
- dnf autoremove <package name> - removes the configuration files along with the package
- dnf makecache - refreshes the list of software available in the repository
- dnf update/upgrade - upgrdes all apps installed on the system from the repository

#### Example Commands - OpenSUSE
- zypper search <package name> - search repository for a package
- zypper install <package name> - install a package
- zypper remove <package name> - remove a package
     - there will be a confirmation message when installing or removing a package - [Y/n]
- zypper --remove clean-deps <package name> - removes the package and dependancies
- zypper refresh - refreshes the list of software available in the repository
- zypper update - upgrdes all apps installed on the system from the repository
- zypper dup - full system update

#### Example Commands - Arch
- pacman -Ss <package name> - search repository for a package
    - S - sync/install
    - s - search
- pacman -S <package name> - install a package
- pacman -R <package name> - remove a package
     - there will be a confirmation message when installing or removing a package - [Y/n]
- pacman -Rns <package name> - removes the package, configuration files and unused dependancies
    - R - removes the package
    - n - removes config files
    - s removes unused dependancies
- pacman -Sy - refreshes the list of software available in the repository
- pacman -Syu - upgrades all apps installed on the system from the repository
    - S - installs and upgrades packages
    - y - refresh repository data
    - u - upgrades all installed packages

- To install, remove or upgrade software on the machine you will need to be logged in as root or use the sudo (super-user do) command

#### Adding repositories
- Each distro will have its own repository of software built for that specific distro to use
- Repository addresses are stored in the sources.list file in /etc/<package_manager>/sources.list
- New repos can be added into this file to be searched alongside the main ones
- Some distros have a GUI based installer option as well

#### Installing with Git
- Software hosted on Github can be installed on the system
- It can be cloned using its URL address - 
    - E.g. - git clone https://www.github.com/balle/bluediving.git
    - This will copy all files onto your system ready to be built
    - Software from github or repositories may need extra software to be downloaded and installed as it may need them to work - these are called "dependancies"