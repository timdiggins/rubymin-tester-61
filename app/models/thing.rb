require "lib/some_class"

class Thing < ApplicationRecord
  belongs_to :group, inverse_of: :things

  def announce_snazzy_group
    group.some_new_method_name

    SomeClass.new.some_active_deprecated_method
    SomeClass.new.some_yard_deprecated_method
    SomeClass.some_active_deprecated_class_method
    SomeClass.some_yard_deprecated_class_method
  end
end
