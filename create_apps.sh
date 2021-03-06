mkdir -p /opt/splunk/etc/deployment-apps/ccdc-linux/local
mkdir -p /opt/splunk/etc/deployment-apps/ccdc-win/local
cp ./outputs.conf /opt/splunk/etc/deployment-apps/ccdc-linux/local/outputs.conf
cp ./outputs.conf /opt/splunk/etc/deployment-apps/ccdc-win/local/outputs.conf
cp ./server.conf /opt/splunk/etc/deployment-apps/ccdc-linux/local/server.conf
cp ./server.conf /opt/splunk/etc/deployment-apps/ccdc-win/local/server.conf
cp ./inputs_linux.conf /opt/splunk/etc/deployment-apps/ccdc-linux/local/inputs.conf
cp ./inputs_win.conf /opt/splunk/etc/deployment-apps/ccdc-win/local/inputs.conf
/opt/splunk/bin/splunk reload deploy-server
