FROM quay.io/modh/runtime-images@sha256:8b962c575adfdb46a9aa3e3fc30fdbe470d049b0ff69f68c5c9f950496ae26c5

RUN pip install kfp==2.7.0 kfp-kubernetes==1.2.0