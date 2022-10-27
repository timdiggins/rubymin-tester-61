require 'rails_helper'

RSpec.describe "SomeClass" do
  it "has deprecations marked" do
    some = SomeClass.new
    some.some_active_deprecated_method
    some.some_yard_deprecated_method
    SomeClass.some_active_deprecated_class_method
    SomeClass.some_yard_deprecated_class_method
    some.some_other_method
  end
end
