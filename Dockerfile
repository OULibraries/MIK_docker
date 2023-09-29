FROM centos/centos:7


RUN yum install -y git

# Configure EPEL and remi php repos
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum install -y yum-utils
RUN yum-config-manager --enable remi-php55

# Install PHP for MIK
RUN yum install -y  php-cli php-xml php-mbstring zip p7zip 

RUN git clone https://github.com/MarcusBarnes/mik.git /opt/mik
RUN cd /opt/mik && curl -sS https://getcomposer.org/installer | php 
