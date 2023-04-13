# Publishing

## On Rubygems.org

On new release don't forget to rebuild the library documentation:

```bash
bundle exec yard doc
```

And to test & lint:

```
bundle exec rubocop
bundle exec rake test
```

Then publish.

```bash
git tag -a vx.x.x
git push --follow-tags
gem push kh2hc-x.x.x.gem
```

See https://guides.rubygems.org/publishing/.
