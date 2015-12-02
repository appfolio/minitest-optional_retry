[![Build Status](https://travis-ci.org/appfolio/minitest-optional_retry.png)](https://travis-ci.org/appfolio/minitest-optional_retry)
[![Code Climate](https://codeclimate.com/github/appfolio/minitest-optional_retry/badges/gpa.svg)](https://codeclimate.com/github/appfolio/minitest-optional_retry)
[![Test Coverage](https://codeclimate.com/github/appfolio/minitest-optional_retry/badges/coverage.svg)](https://codeclimate.com/github/appfolio/minitest-optional_retry/coverage)
[![Gem Version](https://badge.fury.io/rb/minitest-optional_retry.svg)](https://badge.fury.io/rb/minitest-optional_retry)
# minitest-optional_retry

This plugin extends minitest to automatically rerun failed tests up to twice
more. If a subsequent run passes, the suite as a whole will pass. This is useful
to recover from flaky tests.

##Usage

In your Gemfile:
`gem 'minitest-optional_retry'`

Simpy include the main module in the test classes you want to automatically
retry e.g.:

```
require 'minitest-optional_retry'
class ArticleTest < ActiveSupport::TestCase
  extend Minitest::OptionalRetry
end
```

##Notes
If a test ends up failing all 3 of its runs, the reported failure will be the
failure of the first run.
