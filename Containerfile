FROM quay.io/fedora/fedora:42@sha256:89ddd9c1d773dce402e590b3e8b267d30443cb8666afaee278f27e7084685665 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:89ddd9c1d773dce402e590b3e8b267d30443cb8666afaee278f27e7084685665
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
