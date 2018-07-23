class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phoneNum
      t.integer :age
      t.string :teamName
      t.boolean :admin

      t.timestamps
    end
  end
end
