require 'minitest/autorun'

module Minitest
  module OptionalRetry
    def run_one_method(klass, method_name, reporter)
      report_result = nil
      3.times do
        result = Minitest.run_one_method(klass, method_name)
        report_result ||= result
        (report_result = result) and break if result.passed?
      end
      reporter.record(report_result)
    end
  end
end
