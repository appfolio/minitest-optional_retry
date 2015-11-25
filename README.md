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
first occurred failure.
