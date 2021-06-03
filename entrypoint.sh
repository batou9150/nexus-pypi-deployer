#!/bin/bash

confd -onetime -backend env

/bin/bash -c $@
