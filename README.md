# bgptools-cli

A command-line tool to look up BGP information from [bgp.tools](https://bgp.tools).

## Install

### Homebrew

```bash
brew install olerap/tap/bgptools
```

### Manual

```bash
git clone https://github.com/olerap/bgptools-cli.git
cd bgptools-cli
make install
```

## Usage

```bash
# Look up an ASN
bgptools AS13335
bgptools 13335

# Look up an IP address
bgptools 1.1.1.1
bgptools 2606:4700::1111
```

### ASN lookup

Shows network name, prefixes originated, address space, peers, upstreams, downstreams, tags, rankings, and top upstream providers.

```
AS13335 - Cloudflare, Inc.
────────────────────────────────────────

Cloudflare, Inc. (AS13335) is a 15 year old internet critical network...

Prefixes originated:     2475 IPv4, 3043 IPv6
IPv4 space:              5379 /24's of IPv4
Peers:                   3764
Upstreams:               223
Downstreams:             966 (Cone: 974)
Tags:                    Content Delivery Network, Anycast, ...
```

### IP lookup

Shows prefix, origin AS, registration info, prefix status, and upstream providers.

```
1.1.1.1 -> 1.1.1.0/24
────────────────────────────────────────

Prefix:                  1.1.1.0/24
Origin AS:               AS13335 Cloudflare, Inc.
Registered on:           11 Aug 2011 (14 years old)
Prefix status:           Active, Allocated under APNIC
```

## Requirements

- `bash` (4.0+)
- `curl`

## License

MIT
