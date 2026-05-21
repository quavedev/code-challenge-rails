class CreateCheckIns < ActiveRecord::Migration[8.1]
  def change
    create_table :check_ins do |t|
      t.references :person, null: false, foreign_key: true
      t.datetime :checked_in_at, null: false
      t.datetime :checked_out_at
      t.timestamps
    end

    add_index :check_ins, [:person_id, :checked_out_at]
  end
end
