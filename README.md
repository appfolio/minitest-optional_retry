[![Build Status](https://travis-ci.org/appfolio/minitest-retry.png)](https://travis-ci.org/appfolio/minitest-retry)
[![Code Climate](https://codeclimate.com/github/appfolio/minitest-retry/badges/gpa.svg)](https://codeclimate.com/github/appfolio/minitest-retry)
[![Test Coverage](https://codeclimate.com/github/appfolio/minitest-retry/badges/coverage.svg)](https://codeclimate.com/github/appfolio/minitest-retry)
[![Gem Version](https://badge.fury.io/rb/minitest-retry.svg)](http://badge.fury.io/rb/minitest-retry)
# minitest-retry

This plugin extends minitest to automatically rerun failed tests up to twice
more. If a subsequent run passes, the suite as a whole will pass. This is useful
to recover from flakey tests.

##Usage

In your Gemfile:  
`gem 'minitest-retry'`

Simpy include the main module in the test classes you want to automatically
retry e.g.:

```
require 'minitest-retry'
class ArticleTest < ActiveSupport::TestCase
  include Minitest::Retry
end
```

##Notes
If a test ends up failing all 3 of its runs, the reported failure will be the
failure of the first run.
