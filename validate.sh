#!/bin/bash

# Clone flosstudios-cli-tools
git clone https://github.com/flosstudio/cli-tools.git

# Install Requirements
pip install -r cli-tools/schema/requirements.txt

# Get Flosstudios latests schema
python3 cli-tools/schema/get_schema.py -f schema.json

# Validate entire src folder.
python3 cli-tools/schema/validate_folder.py --folder src --schema schema.json --recursive