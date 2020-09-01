# Ssh-tunneler

# Setup
* `docker build -t jimlin7777/ssh-tunneler --no-cache .`

## Server
* `docker-compose up -d`

## Client
* `ssh -o StrictHostKeyChecking=no -R 0.0.0.0:7800:localhost:22  <host>`

## References
* <https://docs.docker.com/engine/examples/running_ssh_service/>
* <https://harry0731.github.io/docker/ssh-contaoner/>
* <https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/>
* <https://www.gnu.org/software/sed/manual/html_node/Regular-Expressions.html>
* <https://stackoverflow.com/questions/21391142/why-is-it-needed-to-set-pam-loginuid-to-its-optional-value-with-docker>
* <https://askubuntu.com/questions/87449/how-to-disable-strict-host-key-checking-in-ssh>
