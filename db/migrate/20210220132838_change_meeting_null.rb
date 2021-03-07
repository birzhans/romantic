class ChangeMeetingNull < ActiveRecord::Migration[6.1]
  def change
    change_column :meets, :day, :string, null: false
    change_column :meets, :place, :string, null: false
  end
end
