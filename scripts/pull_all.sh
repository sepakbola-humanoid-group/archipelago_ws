#!/bin/bash
set -e

git submodule foreach git pull
git -C src/bitbots_utilities/humanoid_league_msgs submodule update