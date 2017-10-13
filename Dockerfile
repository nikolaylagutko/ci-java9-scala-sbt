FROM centos:latest

# install default circleci packages
RUN yum -y install git ssh tar gzip ca-certificates

# install wget
RUN yum -y install wget

# install java9
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/9+181/jdk-9_linux-x64_bin.rpm -O jdk-9_linux-x64_bin.rpm
RUN yum -y install jdk-9_linux-x64_bin.rpm

# install sbt
RUN curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo
RUN yum -y install sbt

# install rpm-tools
RUN yum -y install rpm-build
