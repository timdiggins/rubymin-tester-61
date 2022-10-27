# frozen_string_literal: true
class SomeIncludingClass
  include SomeModule

  def tester
    some_active_deprecated_method
    some_yard_deprecated_method
    SomeIncludingClass.some_active_deprecated_class_method
    SomeIncludingClass.some_yard_deprecated_class_method
    self.class.some_active_deprecated_class_method
    self.class.some_yard_deprecated_class_method
    some_other_method
  end
end
