FROM scratch
COPY nfbpf_compile .
ENTRYPOINT ["/nfbpf_compile"]
