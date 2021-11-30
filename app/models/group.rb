class Group < ApplicationRecord
  has_many :things, inverse_of: :group

  def snazzy_name
    "#{name}, but snazzier"
  end

  def some_new_method_name

  end
end
