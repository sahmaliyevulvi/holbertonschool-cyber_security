#!/bin/bash
sudo nmap $1 -sn -PS 22,80,443
