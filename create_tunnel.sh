#!/usr/bin/env bash
ssh -N -o ServerAliveInterval=30 -o ServerAliveCountMax=1000000 -o ExitOnForwardFailure=yes\
    -R 0.0.0.0:7800:localhost:22 -p 7799 <host>
