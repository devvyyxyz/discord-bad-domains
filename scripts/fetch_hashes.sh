#!/bin/bash

# Fetch hashes from the provided URLs and save to text files
curl -s https://cdn.discordapp.com/bad-domains/hashes.json -o hashes.json
curl -s https://cdn.discordapp.com/bad-domains/updated_hashes.json -o updated_hashes.json

# Create human-readable format files
echo "Generating human-readable hashes..."

# Process hashes.json to create a human-readable format
jq -r '.[] | "\(.hash):\(.domain)"' hashes.json > hashes_human_readable.txt

# Process updated_hashes.json to create a human-readable format
jq -r '.[] | "\(.hash):\(.domain)"' updated_hashes.json > updated_hashes_human_readable.txt

# Add the files to git and commit the changes
git add hashes.txt updated_hashes.txt hashes_human_readable.txt updated_hashes_human_readable.txt
git commit -m "Updated hashes and updated_hashes, added human-readable formats"

# Clean up JSON files
rm hashes.json updated_hashes.json

echo "Hashes and updated_hashes updated successfully!"
