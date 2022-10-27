# frozen_string_literal: true
class SomeClass
  # @deprecated
  def some_yard_deprecated_method
  end

  def some_active_deprecated_method
    ActiveSupport::Deprecation.warn
  end

  class << self
    # @deprecated
    def some_yard_deprecated_class_method
    end

    def some_active_deprecated_class_method
      ActiveSupport::Deprecation.warn
    end
  end

  def some_other_method
  end

  def tester
    some_active_deprecated_method
    some_yard_deprecated_method
    SomeClass.some_active_deprecated_class_method
    SomeClass.some_yard_deprecated_class_method
    self.class.some_active_deprecated_class_method
    self.class.some_yard_deprecated_class_method
    some_other_method
  end
end
