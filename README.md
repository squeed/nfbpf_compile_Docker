[![Docker Repository on Quay](https://quay.io/repository/casey_callendrello/nfbpf_compile/status "Docker Repository on Quay")](https://quay.io/repository/casey_callendrello/nfbpf_compile)

# nfbpf_compile

nfbpf_compile is a useful tool that turns pcap expressions to bpf programs
for use by iptables.

## Example:
```
docker run quay.io/casey_callendrello/nfbpf_compile "tcp port 443 && host 4.2.2.2"
```
