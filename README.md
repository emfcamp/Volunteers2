# Volunteers 2 #

The [Electromagnetic Field](https://www.emfcamp.org/admin/users) volunteer system. 

Why Volunteers 2? Because we already have a [volunteers](https://github.com/emfcamp/Volunteers2) repo.

## Installation ##

Everything runs inside a vagrant box so make sure you have that [installed](https://www.vagrantup.com/docs/installation/). Once vagrant's installed, run:

```bash
> vagrant up --provider virtualbox
> vagrant ssh
(vagrant)> make update
(vagrant)> make
```

If you're on a Mac or Windows you can use [Vagrant's SMB sharing](https://www.vagrantup.com/docs/synced-folders/smb.html). To do this, instead of the first line above run:

```bash
> VAGRANT_SMB=true vagrant up --provider virtualbox
```
