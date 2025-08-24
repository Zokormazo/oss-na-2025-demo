FROM quay.io/fedora/fedora:42@sha256:1fe3bcaf95ae5a8c50bce1c3b70cfde5b4786fc1d6de450d7152008c3e782b80 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:1fe3bcaf95ae5a8c50bce1c3b70cfde5b4786fc1d6de450d7152008c3e782b80
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
