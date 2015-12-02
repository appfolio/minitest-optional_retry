require 'helper'

module Minitest
  class OptionalRetryTest < MetaMetaMetaTestCase
    def test_retry
      @tu =
          Class.new Minitest::Test do
            extend OptionalRetry

            def test_eventually_passes
              @@cnt ||= 0
              @@cnt += 1
              assert_equal 3, @@cnt
            end

            def test_never_passes
              assert false
            end

            def test_passes
              assert true
            end

            def test_skips_then_fails_reports_as_skipped
              @@cnt2 ||= 0
              @@cnt2 += 1
              skip if @@cnt2 == 1
              assert false
            end
          end

      expected = clean <<-EOM
      ..SF

      Finished in 0.00

  1) Failure:
#<Class:0xXXX>#test_never_passes [FILE:LINE]:
Failed assertion, no message given.

      4 runs, 3 assertions, 1 failures, 0 errors, 1 skips

You have skipped tests. Run with --verbose for details.
      EOM

      assert_report expected
    end
  end
end

