# 3 - Setup Coolify

Setting up Coolify is very easy and straightforward, we just need to type the following command

```Bash
curl -fsSL https://cdn.coollabs.io/coolify/install.sh | sudo bash
```

This shell script will install the latest version of Coolify, if you want to install a specific version, use this

```Bash
curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash -s <version>
```

This shell script will install multiple tools that Coolify needs to work properly, so it may take a while

## Accessing Coolify

After we have successfully installed Coolify on our server, we can access it from port 8000

The first time you access it, you will be redirected to a register page, where you type the user in which you want to
log in as a Coolify admin

NOTE: Since we haven't set up a domain for the instance, we are still on http, not https, so the password you type will
not be encrypted yet, so I personally recommend to use a placeholder password for now

## Get a domain

Now we need to set up a domain for our coolify instance, I recommend Hostinger for this task, since I've used their DNS
and so far I've had a good experience.

Now you need to set two A type records: The first one will be with * and point to your server ip, the
second one will be with @ and again, the ip of your server.

## Configure domain for our instance

Remember when I told you to set two A type records in your domain?, well here is why, go to your current Coolify instance, 
go to Settings and you will see the option to set an instance domain, you will then set the name of your choice, in my case,
I called it (https://)coolify.my-domain.com, now go to the Server option in the sidebar, and you will see the option to set
a wildcard, you will then put your complete domain (https://)your-domain.com, this will be used by Coolify to being able
to generate subdomains for your projects.

After this changes you should now be able to access your Coolify instance, this time from your domain name

## Accessing our instance from the domain

Now that you accessed to your Coolify instance from (https://)your-domain.com, you will see that now we are using secude 
http, so we are ready for the next steps

## Changing our temporal password

The first thing that I highly recommend is to change the temporal password to an actual password you would want to use, you
can do it by going to the Profile option in the sidebar

## Closing ports on firewall

Now that we have access to our instance from the domain, we no longer need some ports to be exposed, so we may change them, 
go to 

```Bash
ufw disable 6001
ufw disable 6002
ufw disable 8000
ufw enable
systemctl restart ufw
ufw status
```

You should now see that the ports are disabled, BUT, if you go to your Coolify instance from the server's ip, you will 
notice that it can still be accessed, the thing is, Coolify under the hood is set up via docker compose AND docker was
originally designed to make deployments as easy as possible, this means that, for example, docker by default uses the root
user inside the containers, other collateral effect is that Docker CAN BYPASS our ufw firewall rules, so the last thing 
we need to do to mark our server as complete is to configure Docker for it to stop bypassing our firewall rules