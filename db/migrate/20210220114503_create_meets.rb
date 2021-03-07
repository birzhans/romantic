class CreateMeets < ActiveRecord::Migration[6.1]
  def change
    create_table :meets do |t|
      t.string :day
      t.string :place
      t.datetime :time, null: false
      t.string :optional

      t.timestamps
    end
  end
end
