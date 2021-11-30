class Thing < ApplicationRecord
  belongs_to :group, inverse_of: :things

  def announce_snazzy_group
    group.some_new_method_namex
  end
end
