module ThingsHelper

  def some_new_thing(group_id)
    thing = Thing.new(group_id: group_id)
    thing.group.some_new_method_name
  end
end
