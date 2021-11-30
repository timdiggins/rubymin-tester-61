class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name

      t.timestamps
    end

    add_reference :things, :group, foreign_key: true
  end
end
