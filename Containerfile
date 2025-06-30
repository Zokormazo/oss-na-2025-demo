FROM quay.io/fedora/fedora:42@sha256:2dbff2069a45080720c8ea04862ca0c7f3fd202c090baf7372755a424ef1449c AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:2dbff2069a45080720c8ea04862ca0c7f3fd202c090baf7372755a424ef1449c
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
