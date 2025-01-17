# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerGender < Test::Unit::TestCase
  def setup
    @tester = Faker::Gender
  end

  def test_type
    assert @tester.type.match(/\w+/)
  end

  def test_short_type
    assert @tester.short_type.match(/f|m|x/)
  end

  def test_binary_type
    assert @tester.binary_type.match(/\w+/)
  end

  def test_short_binary_type
    assert @tester.short_binary_type.match(/f|m/)
  end
end
