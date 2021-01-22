#!/bin/bash

wg-quick up wg0

/opt/nzbget/nzbget -D

exec "$@"