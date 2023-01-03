#!/usr/bin/env bash
git clone git@github.com:vladstus/automation-scripts.git ~/Projects/Config_Files/automation-scripts

bash ~/Projects/Config_Files/automation-scripts/shared/copyscripts

### We can't run gitsync before copyscripts

python3 ~/Projects/Config_Files/automation-scripts/shared/git/gitsync.py -a