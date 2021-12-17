# Installs xblock-sdk and dependencies needed to run the tests suite.
# Run this script inside a fresh virtual environment.
rm -rf src/xblock-sdk
pip install -e git://github.com/edx/xblock-sdk.git@c51e4a7212dacfa596d6307b41845819a4a845e3#egg=xblock-sdk
cd src/xblock-sdk/ && ls -la && pip install -r requirements/base.txt && pip install -r requirements/test.txt && cd -
pip install -r requirements.txt
