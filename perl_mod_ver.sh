#!/bin/bash

MOD_NAME=$1

perl -M$MOD_NAME -le "print($MOD_NAME->VERSION)"
