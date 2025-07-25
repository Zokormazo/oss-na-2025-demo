FROM quay.io/fedora/fedora:42@sha256:e9c6149f39b608a14bfe4dcbb24114b9684f01ebe85fe7e75b027fb06952cb8e AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:e9c6149f39b608a14bfe4dcbb24114b9684f01ebe85fe7e75b027fb06952cb8e
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
