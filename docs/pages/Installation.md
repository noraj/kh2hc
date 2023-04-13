# Installation

## Production

### Install from rubygems.org

```bash
gem install kh2hc
```

Gem: [kh2hc](https://rubygems.org/gems/kh2hc)

### Install from BlackArch

From the repository:

```bash
pacman -S kh2hc
```

PKGBUILD: [kh2hc](https://github.com/BlackArch/blackarch/blob/master/packages/kh2hc/PKGBUILD)

## Development

It's better to use [rbenv](https://github.com/rbenv/rbenv) or [asdf](https://github.com/asdf-vm/asdf) to have latests version of ruby and to avoid trashing your system ruby.

### Install from rubygems.org

```bash
gem install --development kh2hc
```

### Build from git

Just replace `x.x.x` with the gem version you see after `gem build`.

```bash
git clone https://github.com/noraj/kh2hc.git kh2hc
cd kh2hc
gem install bundler
bundler install
gem build kh2hc.gemspec
gem install kh2hc-x.x.x.gem
```

Note: if an automatic install is needed you can get the version with `$ gem build kh2hc.gemspec | grep Version | cut -d' ' -f4`.

### Run without installing the gem

From local file:

```bash
irb -Ilib -rkh2hc
```

Same for the CLI tool:

```bash
ruby -Ilib -rkh2hc bin/kh2hc
```
