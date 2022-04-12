FROM debian:buster

RUN sed -i 's/[A-z]*\.debian.org/mirrors.163.com/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    # minimal requirements for C++ users
    g++ \
    python3 \
    # Debugging
    gdb \
    valgrind \
    # tools
    git \
    vim \
    wget \
    tcpdump \
    zsh \
    && rm -rf /var/lib/apt/lists/*

COPY zshrc /etc/zsh/zshrc

ENV TZ=Asia/Shanghai

CMD /bin/zsh