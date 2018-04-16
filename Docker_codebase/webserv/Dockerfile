FROM centos:7
MAINTAINER kish_devops
LABEL Vendor="Cent OS"

RUN yum -y update && yum install -y httpd && yum -y clean all

EXPOSE 80
ADD httpd_start.sh /tmp/httpd_start.sh
RUN chmod 777 /tmp/httpd_start.sh
CMD ["/tmp/httpd_start.sh"] 
