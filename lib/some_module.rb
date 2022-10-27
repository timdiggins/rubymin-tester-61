# frozen_string_literal: true

module SomeModule
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

  def tester_for_some_module
    some_active_deprecated_method
    some_yard_deprecated_method
    SomeModule.some_active_deprecated_class_method
    SomeModule.some_yard_deprecated_class_method
    self.class.some_active_deprecated_class_method
    self.class.some_yard_deprecated_class_method
    some_other_method
  end
end
