FROM quay.io/fedora/fedora:42@sha256:d64c17188eb1520b403c7d28a639887ca298213d15c012c6223458c4df281802 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:d64c17188eb1520b403c7d28a639887ca298213d15c012c6223458c4df281802
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
