FROM avastsoftware/perl-extended

RUN apt-get update && \
    apt-get install -y build-essential flex bison gperf ruby libicu-dev && \
    apt-get clean

RUN git clone --recurse-submodules git://github.com/ariya/phantomjs.git

RUN cd phantomjs && ./build.py


