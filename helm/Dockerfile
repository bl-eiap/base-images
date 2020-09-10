FROM alpine:3.11.6

# CA certificates to authorize public key/certificates of websites
RUN apk update && apk add curl bash openssl ca-certificates && update-ca-certificates

RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3

RUN chmod 700 get_helm.sh && bash get_helm.sh