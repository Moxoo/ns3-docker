FROM debian:buster

RUN sed -i 's/[A-z]*\.debian.org/mirrors.163.com/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    python \
    python-dev \
    mercurial \
    bzr \
    gdb \
    valgrind \
    gsl-bin \
    libgsl0-dev \
    libgsl23 \
    libgslcblas0 \
    flex \
    bison \
    libfl-dev \
    tcpdump \
    sqlite \
    sqlite3 \
    libsqlite3-dev \
    libxml2 \
    libxml2-dev \
    libgtk2.0-0 \
    libgtk2.0-dev \
    vtun \
    lxc \
    uncrustify \
    doxygen \
    graphviz \
    imagemagick \
    texlive \
    texlive-latex-extra \
    texlive-generic-extra \
    texlive-generic-recommended \
    texinfo \
    dia \
    texlive-extra-utils \
    texi2html \
    python-sphinx \
    python-pygraphviz \
    python-kiwi \
    qt4-qmake \
    qt4-dev-tools \
    libboost-signals-dev \
    libboost-filesystem-dev \
    openmpi-bin \
    openmpi-doc \
    libopenmpi-dev \
    git \
    vim \
    wget \
    zsh \
    && rm -rf /var/lib/apt/lists/*

COPY zshrc /etc/zsh/zshrc

ENV TZ=Asia/Shanghai

CMD /bin/zsh