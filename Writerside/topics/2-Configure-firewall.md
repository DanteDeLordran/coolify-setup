# 2 - Configure firewall

Your provider may give you an admin panel or some kind of interface to configure the firewall, but since in this guide
I am using Netcup Root Server, I will use ufw package for configuring the server's firewall

## Installing ufw

As I said earlier, ufw is a well way to set up a firewall for our Root Server

```Bash
# Connected to your root server via SSH
apt install ufw
```

## Configuring ufw firewall rules

Now, before we set up a domain for our Coolify instance, I need to tell you that Coolify needs some ports to be available
for Coolify to work correctly, at least, before we set up a domain for the instance.

According to Coolify, we need to open ports:
- 22 ( for SSH )
- 80 ( for localhost )
- 443 ( for https )
- 6001 ( for websocket )
- 6002 ( for terminal )
- 8000 ( for coolify instance )

```Bash
ufw default deny # Deny all ports by default
ufw allow 22
ufw allow 80
ufw allow 443
ufw allow 6001
ufw allow 6002
ufw allow 8000
ufw enable # We enable ufw
systemctl restart ufw # We apply our new changes
ufw status # We show the current ufw config
```

Now we are ready to proceed with the Coolify set up