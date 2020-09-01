#!/usr/bin/env bash
ssh -N -R 0.0.0.0:7800:localhost:22 -p 7799 <host>
