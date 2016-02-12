FROM avastsoftware/perl-extended

RUN apt-get update && \
    apt-get install -y build-essential flex bison gperf ruby libicu-dev unzip && \
    apt-get clean

RUN lwp-download https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.0.0-source.zip
RUN unzip phantomjs-2.0.0-source.zip
RUN cd phantomjs-2.0.0 && ./build.sh --confirm


