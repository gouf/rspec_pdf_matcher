# frozen_string_literal: true

RSpec::Matchers.define :match_pdf do |expected|
  match do |actual|
    result = PdfMatcher.match(expected, actual)
    result.matched?
  end
end
