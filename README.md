# Reform dry-validation error

Reform and dry-validation only work together with very specific gem versions. See `works/Gemfile` for the correct settings.

`BUNDLE_GEMFILE=works/Gemfile bundle exec ruby run.rb`

When running with the latest version of dry-validation, a load error is raised.

`BUNDLE_GEMFILE=does-not-work/Gemfile bundle exec ruby run.rb`

The [CHANGELOG](https://github.com/dry-rb/dry-validation/blob/master/CHANGELOG.md) from dry-validation indicates multiple breaking changes since version 0.10.5.
