#!/bin/bash

cat > config.py << EOF
STORAGE_ACCOUNT_NAME = '$NAME'
STORAGE_ACCOUNT_KEY = '$KEY'
SAS = ''
IS_EMULATED = False
EOF

