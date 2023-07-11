# Enabling the Fingerprint Reader

When you have enabled the fingerprint reader on Fedora (because you like the
convenience it provides), Ansible commands that require `sudo` won't work
anymore. You have to follow some steps to be able to make both of them work
together. After following the steps in
[this Reddit post](https://www.reddit.com/r/Fedora/comments/kx52nz/disable_fingerprint_reader_when_using_sudo/),
you will have the fingerprint working on login and other Gnome places, while you
will need to provide your password when running a `sudo` command.
