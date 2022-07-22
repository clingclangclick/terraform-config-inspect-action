FROM golang:1.17-alpine AS builder

RUN CGO_ENABLED=0 go install github.com/hashicorp/terraform-config-inspect@latest
RUN CGO_ENABLED=0 go install github.com/itchyny/gojq/cmd/gojq@latest

FROM busybox:stable-glibc

COPY --from=builder /go/bin/terraform-config-inspect /bin/terraform-config-inspect
COPY --from=builder /go/bin/gojq /bin/gojq
COPY entrypoint.sh /entrypoint.sh

VOLUME /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
