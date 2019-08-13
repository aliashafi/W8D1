class AddIndexToSub < ActiveRecord::Migration[5.2]
  def change
    add_index :subs, [:user_id, :title], unique: true
  end
end
