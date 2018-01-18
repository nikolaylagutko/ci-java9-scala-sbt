FROM centos:latest

# install default circleci packages
RUN yum makecache fast
RUN yum -y install git ssh tar gzip ca-certificates

# install wget
RUN yum -y install wget

# install java9
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/9.0.4+11/c2514751926b4512b076cc82f959763f/jdk-9.0.4_linux-x64_bin.rpm
RUN yum -y install jdk-9.0.4_linux-x64_bin.rpm

# install sbt
RUN curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo
RUN yum -y install sbt bc

# install rpm-tools
RUN yum -y install rpm-build
