FROM quay.io/fedora/fedora:42@sha256:127f1e5834a6cd09ec6e2f960c028d97865db94865327de19a99b6cc3578c5c9 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:127f1e5834a6cd09ec6e2f960c028d97865db94865327de19a99b6cc3578c5c9
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
