ARG REPO
ARG TAG
FROM ${REPO}/k3os-awscli:${TAG} as awscli

ARG REPO
ARG TAG
FROM ${REPO}/k3os-base:${TAG} AS base
RUN apk --no-cache add \
    virt-what

COPY --from=awscli /usr/bin/aws-cli/ /bin/aws-cli/
COPY --from=awscli /aws-cli-bin/ /bin/
