# Workstation as Code

This is my collection of Ansible scripts for configuring my Fedora
workstations. I call this Workstation-as-Code! Each script is tagged to enable
easy installation of individual items. This way, you can choose to install only
what you need without having to install everything every time.

> Please note that currently, these scripts only work for Fedora workstations.

## Installing a Role

To install a role, such as cli-tools (for setting up cli-tools setup), use the
following command:

```bash
ansible-playbook -i hosts -K bootstrap.yml --tags cli-tools
```

The `-i` parameter specifies the host file for the playbook, which in this case
is the [hosts](/hosts) file containing only the localhost.

The `-K` option prompts Ansible to ask for your password, which is required for
certain installation scripts (e.g., `dnf` commands).

The `--tags` specifies the tasks which will be run with the ansible command.
There is also the `--skip-tags` option, which allows you to omit certain tags.

For example, if you want to install all the tools, except `zoxide` you should
do:

```bash
ansible-playbook -i hosts -K bootstrap.yml --tags cli-tools --skip-tags zoxide
```

### Available Tags

This repository also has tags for all the separate functionalities, so you can
install each one separately if you wish.

Available tags are:

**CLI Tools**

- `cli-tools` :arrow_right: *Install all of the following*:
- `helix`
- `fish`
- `lf`
- `gitui`
- `zoxide`
- `exa`
- `bartib`
- `just`
- `todo.sh`

**Programming Languages**

- `languages` :arrow_right: *Install all of the following*:
- `docker`
- `markdown`

**Gnome**

- `gnome` :arrow_right: *Install all of the following*:
- `gnome-look`
- `gnome-apps`
- `gsettings`

## Configuration

You can overwrite some Ansible vars in another yaml file, which you can then
include in the "play" by using the `--extra-vars` option, followed by the file
with your yaml variables prefixed with `@`. So, for example:

```bash
ansible-playbook -i hosts -K bootstrap.yml --extra-vars @private_config.yml
```

I put my own overrides in `private_config.yml`, which I use to fully customize
my own system without putting it all under source control.

The available config options can be found under each role in the `vars`
directory.

## Creating New Roles

Creating a new role is simple: just create a directory with the desired role
name in the [roles](/roles) directory.

## Todo

Tasks I plan to accomplish in this repository:

- [ ] Refactor code to utilize variables instead of hard-coded values
- [ ] Add the Gnome configuration as a role
- [ ] Add applications that I use as roles
- [ ] Document/research clean setup?
  - [ ] Initial git setup
  - [ ] Nvidia setup, if enabled. Don't forget the kernel parameters
- [ ] Document/research setup for variables overriding
  - `group_vars/local.yml` overrides `group_vars/all.yml`
  - [Ansible Docs](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html)
