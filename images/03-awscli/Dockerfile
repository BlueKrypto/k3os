ARG ALPINE_VERSION=3.19
FROM python:3.13.0a6-alpine${ALPINE_VERSION} as builder
# Pinned at 3.11 due to pyinstaller

ARG AWS_CLI_VERSION=2.15.38
RUN apk add --no-cache git unzip groff build-base libffi-dev cmake
RUN git clone --single-branch --depth 1 -b ${AWS_CLI_VERSION} https://github.com/aws/aws-cli.git

WORKDIR aws-cli
RUN python -m venv venv
RUN . venv/bin/activate
RUN scripts/installers/make-exe
RUN unzip -q dist/awscli-exe.zip
RUN aws/install --bin-dir /aws-cli-bin --install-dir /usr/bin/aws-cli
RUN /aws-cli-bin/aws --version

# reduce image size: remove autocomplete and examples
RUN rm -rf \
    /usr/bin/aws-cli/v2/current/dist/aws_completer \
    /usr/bin/aws-cli/v2/current/dist/awscli/data/ac.index \
    /usr/bin/aws-cli/v2/current/dist/awscli/examples \
    /usr/bin/aws-cli/v2/current/bin/aws_completer \
    /aws-cli-bin/aws_completer
RUN find /usr/bin/aws-cli/v2/current/dist/awscli/data -name completions-1*.json -delete
RUN find /usr/bin/aws-cli/v2/current/dist/awscli/botocore/data -name examples-1.json -delete
