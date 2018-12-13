firewall-cmd --permanent --zone=public --add-port=8529/tcp
firewall-cmd --reload
cd /etc/yum.repos.d/
curl -OL https://download.arangodb.com/arangodb34/RPM/arangodb.repo
yum -y install arangodb3-3.4.0
ARANGODB_DEFAULT_ROOT_PASSWORD=ARANGODBONOCI arango-secure-installation
systemctl start arangodb3.service
systemctl enable arangodb3.service