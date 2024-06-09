# Sitepress::Pagefind
A [Pagefind](https://pagefind.app/) integration for [Sitepress-Rails](https://sitepress.cc/getting-started/rails)

> [!IMPORTANT]
> For now, this plugin is intended to be used with a mounted Sitepress installation (i.e. `sitepress-rails`)

> [!CAUTION]
> For now the only tested case is one where no dynamic parts (i.e. those pertaining to a logged in user) are embedded in the static Sitepress pages.


## Installation
Add this line to your application's Gemfile:

```ruby
gem "sitepress-pagefind"
```

And then execute:
```bash
$ bundle
```

Then run the installer:

```bash
$ bin/rails g sitepress:pagefind:install
```

This installs
- the `@pagefind/default-ui` JavaScript package
- a Stimulus controller attachable to a `<dialog>`
- a template `_search` partial for your convenience.

## Usage
To compile a Pagefind index, run the following rake task:

```bash
$ bin/rails sitepress:pagefind:build
```


This task will also be invoked by `assets:precompile` so you don't have to alter your build scripts. 

> [!TIP]
> If you want to opt out of this behavior, just set the `SKIP_SITEPRESS_PAGEFIND_BUILD` environment variable.


## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
