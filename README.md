# How to ROOT Termux ?

*You will learn how to root (have root access) your Termux emulator using Ubuntu.*

## Use, interest...
Are you tired of tools, scripts or various applications that need root access? With this tutorial, you will be able to have your ubuntu (arm64) with root access, also having access to the features of TermuxAPi.

---

### Copy, paste & run these commands!

<br>

```bash
# Installing GIT for Termux...
pkg install git -y
```

```bash
# Cloning files via GIT...
git clone https://github.com/woroxdev/termux-root.git && cd termux-root && chmod +x *
```

```bash
# Upgrading packages...
pkg upgrade
```

---

### Installation orders

<br>

```bash
# Running the BASH script "install.sh"...
bash install.sh
```

---

### Updates & Upgrades

<br>

```bash
apt update
```

```bash
apt upgrade
```

<br>

Here is the command to install **sudo**:

```bash
apt install sudo
```
<br>

*Note : You will no longer have access to `pkg` commands after installing ubuntu.*

*Note : Don't bother deleting system files.*

*Note : Applications and/or scripts may no longer be compatible if they used specific Termux features.*

*Note : The ubuntu environment is updated very frequently but is not affiliated with Termux, it may have technical problems that Termux support cannot do anything about.*

*Note : Root unlocking is not illegal as some common misconceptions may say.*
