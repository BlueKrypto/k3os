ARG ALPINE_VERSION=3.21
FROM python:3.12.11-alpine${ALPINE_VERSION} AS builder

ARG AWS_CLI_VERSION=2.27.31
RUN apk add --no-cache git unzip groff build-base libffi-dev cmake
RUN git clone --single-branch --depth 1 -b ${AWS_CLI_VERSION} https://github.com/aws/aws-cli.git

WORKDIR aws-cli
RUN python -m venv venv
RUN . venv/bin/activate
COPY requirements.txt .
RUN pip install -r requirements.txt
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
