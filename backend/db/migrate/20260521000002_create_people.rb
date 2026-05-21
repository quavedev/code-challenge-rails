class CreatePeople < ActiveRecord::Migration[8.1]
  def change
    create_table :people do |t|
      t.references :community, null: false, foreign_key: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :title
      t.string :company_name
      t.timestamps
    end
  end
end
