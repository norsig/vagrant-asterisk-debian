# vagrant-asterisk-debian

`vagrant-asterisk-debian` is a simple vagrant project that simplifies the provision of an Asterisk PBX into a Debian machine. It can be useful if you want to prepare this kind of scenario quickly.

## Components:
* Vagrant Box: `debian/jessie64`
* Asterisk PBX Version: `13.14.0`

## Requirements:
* `VirtualBox 5.0.*`
* `Vagrant 1.8.*`

## Usage:
Install `vagrant-vbguest` plugin. It installs the host's VirtualBox Guest Additions on the guest system.
```bash
vagrant plugin install vagrant-vbguest
```

Create and configure the machine:
```bash
vagrant up
```

Now, you are ready to play with your Asterisk
```bash
service asterisk status
```

Here the output:
```bash
asterisk.service - LSB: Asterisk PBX
   Loaded: loaded (/etc/init.d/asterisk)
   Active: active (running)
```

## License
MIT
