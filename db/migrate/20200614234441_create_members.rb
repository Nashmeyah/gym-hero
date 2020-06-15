class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :phone_number
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end