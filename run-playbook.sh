#!/bin/sh

ansible-playbook $* local.yml && reboot
