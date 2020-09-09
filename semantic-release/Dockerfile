FROM node:10.22-alpine

# CA certificates to authorize public key/certificates of websites
RUN \
    apk update && \
    apk add git ca-certificates bind-tools git-lfs && \
    update-ca-certificates

RUN npm install -g semantic-release @semantic-release/gitlab @semantic-release/gitlab-config @semantic-release/changelog @semantic-release/exec @semantic-release/commit-analyzer

CMD ["/bin/sh"]