require 'rails_helper'

require "lib/some_module"

RSpec.describe "including SomeModule" do
  include SomeModule

  it "has deprecations marked" do
    some_active_deprecated_method
    some_yard_deprecated_method
    self.class.some_active_deprecated_class_method
    self.class.some_yard_deprecated_class_method
    some_other_method
  end
end
