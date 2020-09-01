# Ssh-tunneler

# Setup
* `docker build -t jimlin7777/ssh-tunneler --no-cache .`
* Put your public key (named it as `id_rsa.pub`) and put it into this folder.

## Server
* `docker-compose up -d`

## Client
* `bash create_tunnel.sh`

## References
* <https://docs.docker.com/engine/examples/running_ssh_service/>
* <https://harry0731.github.io/docker/ssh-contaoner/>
* <https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/>
* <https://www.gnu.org/software/sed/manual/html_node/Regular-Expressions.html>
* <https://stackoverflow.com/questions/21391142/why-is-it-needed-to-set-pam-loginuid-to-its-optional-value-with-docker>
* <https://askubuntu.com/questions/87449/how-to-disable-strict-host-key-checking-in-ssh>
* <https://unix.stackexchange.com/questions/133863/permanent-background-ssh-connection-to-create-reverse-tunnel-what-is-correct-wa>
* <https://kb.iu.edu/d/aews>
