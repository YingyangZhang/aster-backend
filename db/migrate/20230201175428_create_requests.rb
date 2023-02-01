class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :date_of_birth
      t.string :height
      t.string :weight
      t.text :about
      t.text :motivation
      t.integer :user_id

      t.timestamps
    end
  end
end
