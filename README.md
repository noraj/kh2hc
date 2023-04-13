# kh2hc

[![Gem Version](https://badge.fury.io/rb/kh2hc.svg)](https://badge.fury.io/rb/kh2hc)
![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/noraj/kh2hc)
[![GitHub forks](https://img.shields.io/github/forks/noraj/kh2hc)](https://github.com/noraj/kh2hc/network)
[![GitHub stars](https://img.shields.io/github/stars/noraj/kh2hc)](https://github.com/noraj/kh2hc/stargazers)
[![GitHub license](https://img.shields.io/github/license/noraj/kh2hc)](https://github.com/noraj/kh2hc/blob/master/LICENSE)
[![Rawsec's CyberSecurity Inventory](https://inventory.raw.pm/img/badges/Rawsec-inventoried-FF5050_flat.svg)](https://inventory.raw.pm/tools.html#kh2hc)

[![Packaging status](https://repology.org/badge/vertical-allrepos/kh2hc.svg)](https://repology.org/project/kh2hc/versions)

![logo](https://github.com/noraj/kh2hc/raw/master/docs/_media/kh2hc-logo.png)

> Convert OpenSSH known_hosts file hashed with HashKnownHosts to hashes crackable by Hashcat.

**CLI**

`kh2hc test/file_samples/known_hosts`

![CLI example](https://i.imgur.com/nL5vX0F.png)

**Library**

![library example](https://i.imgur.com/pJOa7NR.png)

## Features

- CLI and library
- Convert to:
  - an array of hashes (objects) crackable by Hashcat (lib only)
  - a hash file crackable by Hashcat
- Check if a known_hosts is hashed

## Installation

```plaintext
$ gem install kh2hc
```

Check the [installation](https://noraj.github.io/kh2hc/yard/file.Installation.html) page on the documentation to discover more methods.

## Documentation

Documentation:

- [Homepage](https://noraj.github.io/kh2hc/)
- [Usage](https://noraj.github.io/kh2hc/yard/file.Usage.html)

## Author

Made by Alexandre ZANNI ([@noraj](https://pwn.by/noraj/)).
