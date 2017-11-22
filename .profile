# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

#export DOCKER_HOST=tcp://172.17.0.2:2375
export NSS_SSL_CBC_RANDOM_IV=0
export FILE_BEAT="/usr/share/filebeat"
export METRIC_BEAT="/usr/share/metricbeat"
export SUBLIME_HOME="$HOME/tools/sublime_text_3"
export JAVA_HOME="$HOME/tools/java8"
export IDEA_JDK="$JAVA_HOME"
export IDEA="$HOME/tools/intellij"
export SQLDEV="$HOME/tools/sqldeveloper"
export ANT_HOME="$HOME/tools/ant"
export GRADLE_HOME="$HOME/tools/gradle"
export JBOSS_HOME="$HOME/tools/wildfly"
export LD_LIBRARY_PATH="$HOME/tools/sqlplus/instantclient/bin"
export ORACLE_HOME="$HOME/tools/sqlplus/instantclient/bin"
export SQLPATH="$HOME/tools/sqlplus/instantclient/bin"
export TNS_ADMIN="$HOME/tools/sqlplus/instantclient/bin"
export MAVEN_HOME="$HOME/tools/maven"
export ACTIVATOR="$HOME/tools/activator"
export YARN="$HOME/.config/yarn/global/node_modules/.bin"
export SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
export PATH="$PATH:$JAVA_HOME/bin:$ANT_HOME/bin:$GRADLE_HOME/bin:$IDEA/bin:$JBOSS_HOME/bin:$LD_LIBRARY_PATH:$SQLPATH:$TNS_ADMIN:$ORACLE_HOME:$MAVEN_HOME/bin:$ACTIVATOR/bin:$SUBLIME_HOME:$FILE_BEAT/bin:$METRIC_BEAT/bin:$YARN"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
if [ -e /home/ext.slaouini/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ext.slaouini/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
