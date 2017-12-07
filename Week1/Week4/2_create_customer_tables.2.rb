class CreateCustomerTables < ActiveRecord::Migration[5.0]

  def change

    
  create_table :customers do |t|
      t.text :name
      t.text :newname
      t.timestamps
    end

  end

end