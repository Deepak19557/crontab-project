class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :block, :default => false
      t.string :email 
      t.integer :age 
      t.integer :phone
     
      t.timestamps
    end
  end
end
