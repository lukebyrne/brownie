#!/bin/bash

cd /usr/local/lib
git clone --depth=1 https://github.com/iamdefinitelyahuman/brownie
chmod -R 777 /usr/local/lib/brownie
cd brownie
python3.6 -m venv venv
venv/bin/pip install -r requirements.txt

echo '#!/bin/bash' > /usr/local/bin/brownie
echo 'source /usr/local/lib/brownie/venv/bin/activate' >> /usr/local/bin/brownie
echo 'python /usr/local/lib/brownie "$@"' >> /usr/local/bin/brownie
chmod +x /usr/local/bin/brownie