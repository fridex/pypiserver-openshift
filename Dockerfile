FROM fedora:28

RUN mkdir /home/packages && \
    chmod a+rw /home/packages && \
    dnf install -y python3-pip && \
    pip3 install pypiserver

EXPOSE 8080
USER 1010
ENTRYPOINT ["pypi-server"]
CMD ["-p", "8080", "/home/packages"]
