# 1 - Getting a VPS

The first step is to get a VPS or some device in which you can have a static ip address, it can be a
homemade server or even a raspberry pi.

I personally recommend Netcup since I've been using their Root Servers for a while now and so far I haven't had
any issue, they are also very affordable and offer very good specs for the price.

## Connect to VPS and update

Once you have acquired a device of your choice now is time to connect to the device via SSH or any other way,
in Netcup you can use the integrated terminal, but is awful as fuck, I recommend ssh

```Bash
sudo pacman -S openssh # In my case, I use Arch
ssh root@<your-server-ip>
```
You will then be prompted to type 'yes' for the connection.Then you will be asked to type your root user password

The next step is to update the server, as you may notice, Netcup provides a Debian Server distro by default,
so you should watch out for your server's distro.

```Bash
apt update # apt since we are now connected to our server
apt upgrade
```

After updating the server, I recommend changing the root password, since the default given by the provider may not
be remember-friendly

```Bash
passwd
```

You will then be prompted to type the current password and then type the new password
