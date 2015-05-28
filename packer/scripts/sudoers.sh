#!/bin/bash

cat <<EOF > /tmp/sudoers
#
# This file MUST be edited with the 'visudo' command as root.
#
# Please consider adding local content in /etc/sudoers.d/ instead of
# directly modifying this file.
#
# See the man page for details on how to write a sudoers file.
#
Defaults        env_reset
Defaults        env_keep += "HOME"
Defaults        mail_badpass
Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Host alias specification

# User alias specification

# Cmnd alias specification

# User privilege specification
root    ALL=(ALL:ALL) ALL

# Allow members of group adm to execute any command
%adm   ALL=(ALL) NOPASSWD: SETENV: ALL

# See sudoers(5) for more information on "#include" directives:

#includedir /etc/sudoers.d
EOF

chmod 440 /tmp/sudoers
chown root:root /tmp/sudoers
visudo -cf /tmp/sudoers
mv /tmp/sudoers /etc/sudoers
