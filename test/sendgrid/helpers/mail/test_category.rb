require_relative '../../../../lib/sendgrid-ruby.rb'
require 'minitest/autorun'

class TestCategory < Minitest::Test

  include SendGrid

  def setup
    @category = Category.new(name: 'foo')
  end

  def test_name
    assert_equal @category.name, 'foo'
  end

  def test_to_json
    expected_json = {
      'category' => 'foo'
    }
    assert_equal @category.to_json, expected_json
  end

end
