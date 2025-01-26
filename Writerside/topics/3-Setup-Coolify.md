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

