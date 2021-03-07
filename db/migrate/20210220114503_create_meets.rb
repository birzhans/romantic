class CreateMeets < ActiveRecord::Migration[6.1]
  def change
    create_table :meets do |t|
      t.string :day
      t.string :place
      t.string :time, :datetime, null: false
      t.string :optional

      t.timestamps
    end
  end
end
