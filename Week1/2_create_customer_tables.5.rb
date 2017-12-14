class CreateCustomerTables < ActiveRecord::Migration[5.0]

  def change

    
  create_table :fish do |t|  #update_table
      t.text :name
      t.references :user
      t.references :post
      t.timestamps
    end

  end

end