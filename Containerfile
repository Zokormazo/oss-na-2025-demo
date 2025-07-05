FROM quay.io/fedora/fedora:42@sha256:2683cc902d6f9a36d3eb6c51bd6713a9269aecdb70cec9014d9300281d5f02e0 AS builder

RUN dnf install -y python3 python3-pip cargo python3-devel gcc libffi-devel openssl-devel
RUN python3 -m pip install my_app

FROM quay.io/fedora/fedora:42@sha256:2683cc902d6f9a36d3eb6c51bd6713a9269aecdb70cec9014d9300281d5f02e0
RUN dnf install -y python3 libffi
COPY --from=builder /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
