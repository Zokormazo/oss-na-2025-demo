FROM quay.io/fedora/fedora:42@sha256:7e8b2a556ba39c715bcab2c9fdd975f8f42bccf91ef01cdc1f8c1537d7cf429b AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:7e8b2a556ba39c715bcab2c9fdd975f8f42bccf91ef01cdc1f8c1537d7cf429b
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
