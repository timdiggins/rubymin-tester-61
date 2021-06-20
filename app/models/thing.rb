class Thing < ApplicationRecord
  # @deprecated
  def some_method_yard_deprecated
  end

  def some_method_rails_deprecated
    ActiveSupport::Deprecation.warn
  end

  def some_method_undeprecated
  end

  def other_method
    some_method_yard_deprecated
    some_method_rails_deprecated
    some_method_undeprecated
  end
end
