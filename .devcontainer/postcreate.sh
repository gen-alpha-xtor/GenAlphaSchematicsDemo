
# 
# # Post Repo / Workspace Creation Script
# 

set -eo pipefail

# Get the ASAP7 libraries 
git submodule update --init --recursive 

# Set their PDK directory relative to the repository root
echo "{ \"PDK_DIR\": \"$PWD/asap7_pdk_r1p7\" }" > env.json 

