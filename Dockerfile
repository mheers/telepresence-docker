FROM datawire/telepresence:2.17.0

# Install curl and nano

RUN apk add --no-cache curl nano

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.29.0/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/


# Install kubens
RUN curl -sS https://webi.sh/kubens | sh && \
    mv /root/.local/bin/kubens /usr/local/bin/
