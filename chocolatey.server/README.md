# Chocolatey.Server

This vagrant file will install and configure the following onto this machine:

* Chocolatey
* Chocolatey.Server
* ChocolateyGUI

Once installed, you should immediately be able to browse to:

http://localhost

And start to push packages to Chocolatey.Server using:

`choco push <package_path> --source="'http://localhost/chocolatey'" --api-key="'chocolateyrocks'"
