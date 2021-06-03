FROM python:3.9-slim

RUN  wget  https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 -O /bin/confd \
    && chmod a+x /bin/confd \
    && python3 -m pip install --upgrade pip build twine \
    && mkdir /root/.pip
ADD confd /etc/confd

ADD nexus-pypi-deployer /bin/nexus-pypi-deployer
RUN chmod a+x /bin/nexus-pypi-deployer
