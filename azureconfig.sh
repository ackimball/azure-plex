#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Please provide your storage account name and key"
    echo "./azureconfig.sh [storage name] [account key]"
    exit 1
fi

cat > config.py << EOF
STORAGE_ACCOUNT_NAME = '$1'
STORAGE_ACCOUNT_KEY = '$2'
SAS = ''
IS_EMULATED = False
EOF

