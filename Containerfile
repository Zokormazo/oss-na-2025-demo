FROM quay.io/fedora/fedora:42@sha256:205f61cebc55c540231d4d6d854749216ef709359ca739f421c8da7ee529661b AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:68779a51b655f6bfeef08429fe31c33508f6a0d6beaf5660de094d49948a8e37
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
