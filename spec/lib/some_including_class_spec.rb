require 'rails_helper'

RSpec.describe "SomeIncludingClass" do
  it "has deprecations marked" do
    some = SomeIncludingClass.new
    some.some_active_deprecated_method
    some.some_yard_deprecated_method
    SomeIncludingClass.some_active_deprecated_class_method
    SomeIncludingClass.some_yard_deprecated_class_method
    some.some_other_method
  end
end
