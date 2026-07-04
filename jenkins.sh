sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm-stable/jenkins.repo -y
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install java-21-amazon-corretto -y
sudo yum install jenkins
sudo systemctl daemon-reload
systemctl start jenkins.service
systemctl status jenkins.service

