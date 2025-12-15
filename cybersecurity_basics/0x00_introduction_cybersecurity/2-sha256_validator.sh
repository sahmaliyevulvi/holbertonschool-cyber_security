#!/bin/bash
echo "$2  $1" | sha256sum -c --quiet && echo ok || echo fail
