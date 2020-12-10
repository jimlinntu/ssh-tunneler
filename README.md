# Ssh-tunneler

## Environment
* Ubuntu 18.04

## Setup
* `docker build -t jimlin7777/ssh-tunneler --no-cache .`
* Put your public key (named it as `id_rsa.pub`) and put it into this folder.
* Modify parenthesis enclosing string to meet your need and then put `create_tunnel.service` into `/etc/systemd/system/`.
* Modify `create_tunnel.sh` to meet your need.

## Server
* `docker-compose up -d`

## Client
* `bash create_tunnel.sh` or `systemctl start create_tunnel` (`systemctl enable create_tunnel` if you want it to start after booting)

## References
* <https://docs.docker.com/engine/examples/running_ssh_service/>
* <https://harry0731.github.io/docker/ssh-contaoner/>
* <https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/>
* <https://www.gnu.org/software/sed/manual/html_node/Regular-Expressions.html>
* <https://stackoverflow.com/questions/21391142/why-is-it-needed-to-set-pam-loginuid-to-its-optional-value-with-docker>
* <https://askubuntu.com/questions/87449/how-to-disable-strict-host-key-checking-in-ssh>
* <https://unix.stackexchange.com/questions/133863/permanent-background-ssh-connection-to-create-reverse-tunnel-what-is-correct-wa>
* <https://kb.iu.edu/d/aews>
* <https://medium.com/@benmorel/creating-a-linux-service-with-systemd-611b5c8b91d6>
* <https://serverfault.com/questions/845471/service-start-request-repeated-too-quickly-refusing-to-start-limit>
* <https://superuser.com/questions/352268/can-i-make-ssh-fail-when-a-port-forwarding-fails>: `ssh -o ExitOnForwardFailure=yes ...`
* <https://serverfault.com/questions/595323/ssh-remote-port-forwarding-failed>:
```
If the client reconnect before the connection has terminated on the server, you can end up in a situation where the new ssh connection is live, but has no port forwardings. In order to avoid that, you need to use the ExitOnForwardFailure keyword on the client side.
```
* <https://wiki.ubuntu.com/SystemdForUpstartUsers>: Ubuntu official tutorial.
* <https://www.freedesktop.org/software/systemd/man/systemd.unit.html#Specifiers>
* <https://serverfault.com/questions/794922/how-to-use-the-home-environment-variable-in-systemd-service-files>: `$HOME` seems not allowed in `ExecStart`.
* <https://superuser.com/questions/1025091/start-a-systemd-user-service-at-boot>: run systemd user service.
* <https://www.unixsysadmin.com/systemd-user-services/>
* <https://superuser.com/questions/513159/how-to-remove-systemd-services>: `systemctl daemon-reload`
