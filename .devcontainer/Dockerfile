FROM golang:1.22-alpine AS build

# Turning off Cgo is required to install Delve on Alpine.
ENV CGO_ENABLED=0

# Download and install the Delve debugger.
RUN go install github.com/go-delve/delve/cmd/dlv@latest

FROM datawire/telepresence:2.19.1

COPY --from=build /go/bin/dlv /bin/dlv

# Install a few tools
RUN apk add --no-cache curl nano jq file

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.29.1/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

# Install kubens
RUN curl -sS https://webi.sh/kubens | sh && \
    mv /root/.local/bin/kubens /usr/local/bin/

# Install kubectx
RUN curl -sS https://webi.sh/kubectx | sh && \
    mv /root/.local/bin/kubectx /usr/local/bin/
