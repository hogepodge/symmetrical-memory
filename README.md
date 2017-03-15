# symmetrical-memory
Scripts for setting up and maintaining my home lab

This set of scripts assumes a CentOS 7 installation

```
sudo yum install -y git
git clone https://github.com/hogepodge/symmetrical-memory.git
```

## Assumptions
* You're running CentOS.
* The fixed IP address of the target host is 192.168.1.6.
* Registry storage is at a preconfigured directory named /registry.
* You want to run the registry on port 4000 rather than 5000, because Keystone.
