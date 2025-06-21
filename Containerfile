FROM quay.io/fedora/fedora:42@sha256:6439f9e6207db00bf47f2ae6dad5d62ad351cc0c3ef93e602d815dc1db400c0f AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:6439f9e6207db00bf47f2ae6dad5d62ad351cc0c3ef93e602d815dc1db400c0f
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
