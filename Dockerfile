FROM gcr.io/google_containers/ubuntu-slim:0.5

COPY requirements.txt /snarkbot/

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -yq --no-install-recommends python3-minimal python3-pip python3-setuptools && \
    pip3 install -r /snarkbot/requirements.txt --disable-pip-version-check --no-cache-dir && \
    apt-get purge -y --auto-remove python3-pip && \
    apt-get autoremove -y && \
    apt-get clean -y

COPY / /snarkbot/

WORKDIR /snarkbot

CMD ["bin/start.sh"]
