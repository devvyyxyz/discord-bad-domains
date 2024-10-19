#!/bin/bash

# Fetch hashes from the provided URLs and save to text files
curl -s https://cdn.discordapp.com/bad-domains/hashes.json > hashes.txt
curl -s https://cdn.discordapp.com/bad-domains/updated_hashes.json > updated_hashes.txt

# Add the files to git and commit the changes
git add hashes.txt updated_hashes.txt
git commit -m "Updated hashes and updated_hashes"
