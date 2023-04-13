# Usage

## CLI

The binary is named `kh2hc`.

```plaintext
$ kh2hc -h
kh2hc v0.0.1

Usage:
  kh2hc <know_hosts> [<hashcat>] [--no-color --debug]
  kh2hc -h | --help
  kh2hc --version

Parameters:
  <know_hosts>    OpenSSH known_hosts file hashed with HashKnownHosts
  <hashcat>       Output file containing hash crackable by Hashcat

Options:
  --no-color      Disable colorized output
  --debug         Display arguments
  -h, --help      Show this screen
  --version       Show version
```

### Examples

```plaintext
$ kh2hc test/file_samples/known_hosts
483a3a9f1200ebe8e236fb0c92a47cc71b6a211d:30228bb2232a5d5290951d4658b269a94a0172f9
0caf4a8d53925b7ffd27ec9f1e4f9c6facfa14cb:6f4f106995ee819e362b1da59aeee4ad292b6d20
3ac8baf6737210f1ecc16c41ab2208adf37a00cd:1165541932531242372e94106bdc13660dd2fcfd
9072d12c7325c2df89dab8f1eecb63886748a819:3797865ea4185dc026aec4b3bb9c079adc0312f5
06edbbba2a65b9e146ec98d5734af867d6b923f2:9ad101fec45889df41429dbd3e563f8271ec83c5
53f8bf89a1d405bbd1780389b7535a4b269f407d:2eccd33e12e7592e0667f5e46b44ad2eeaf55e20
9d3fa1ad06220384b4d3d6b54c92cd4182f007ac:0c60a5efa4f5fc2b4e28017d26fe6c0262b38f2d
e5b067b8ebf7a84dd476fc63ffb9b50fec836a36:30720652470c627f6b716d2e804fad7d43e042cb
403b668023db851d84cec4e48ae37bdf897a903c:ef79df3a9657bedd3bf1a143c49be2a6aadc67fd
```

## Library

See [Kh2hc](https://noraj.github.io/kh2hc/yard/Kh2hc.html).

### Examples

```ruby
require 'kh2hc'

Kh2hc.convert1('test/file_samples/known_hosts')
# =>
"483a3a9f1200ebe8e236fb0c92a47cc71b6a211d:30228bb2232a5d5290951d4658b269a94a0172f9\n0caf4a8d53925b7ffd27ec9f1e4f9c6facfa14cb:6f4f106995ee819e362b1da59aeee4ad292b6d20\n3ac8baf6737210f1ecc16c41ab2208adf37a00cd:1165541932531242372e94106bdc13660dd2fcfd\n9072d12c7325c2df89dab8f1eecb63886748a819:3797865ea4185dc026aec4b3bb9c079adc0312f5\n06edbbba2a65b9e146ec98d5734af867d6b923f2:9ad101fec45889df41429dbd3e563f8271ec83c5\n53f8bf89a1d405bbd1780389b7535a4b269f407d:2eccd33e12e7592e0667f5e46b44ad2eeaf55e20\n9d3fa1ad06220384b4d3d6b54c92cd4182f007ac:0c60a5efa4f5fc2b4e28017d26fe6c0262b38f2d\ne5b067b8ebf7a84dd476fc63ffb9b50fec836a36:30720652470c627f6b716d2e804fad7d43e042cb\n403b668023db851d84cec4e48ae37bdf897a903c:ef79df3a9657bedd3bf1a143c49be2a6aadc67fd"

Kh2hc.convert('test/file_samples/known_hosts')
# =>
[{:hash=>"483a3a9f1200ebe8e236fb0c92a47cc71b6a211d", :salt=>"30228bb2232a5d5290951d4658b269a94a0172f9"},
 {:hash=>"0caf4a8d53925b7ffd27ec9f1e4f9c6facfa14cb", :salt=>"6f4f106995ee819e362b1da59aeee4ad292b6d20"},
 {:hash=>"3ac8baf6737210f1ecc16c41ab2208adf37a00cd", :salt=>"1165541932531242372e94106bdc13660dd2fcfd"},
 {:hash=>"9072d12c7325c2df89dab8f1eecb63886748a819", :salt=>"3797865ea4185dc026aec4b3bb9c079adc0312f5"},
 {:hash=>"06edbbba2a65b9e146ec98d5734af867d6b923f2", :salt=>"9ad101fec45889df41429dbd3e563f8271ec83c5"},
 {:hash=>"53f8bf89a1d405bbd1780389b7535a4b269f407d", :salt=>"2eccd33e12e7592e0667f5e46b44ad2eeaf55e20"},
 {:hash=>"9d3fa1ad06220384b4d3d6b54c92cd4182f007ac", :salt=>"0c60a5efa4f5fc2b4e28017d26fe6c0262b38f2d"},
 {:hash=>"e5b067b8ebf7a84dd476fc63ffb9b50fec836a36", :salt=>"30720652470c627f6b716d2e804fad7d43e042cb"},
 {:hash=>"403b668023db851d84cec4e48ae37bdf897a903c", :salt=>"ef79df3a9657bedd3bf1a143c49be2a6aadc67fd"}]

Kh2hc.hashed?('test/file_samples/known_hosts')
# =>
true
```
