class CreateCustomerTables < ActiveRecord::Migration[5.0]

  def change

    
  create_table :dogs do |t|
      t.text :name
      t.text :type
      t.text :text
      t.timestamps
    end

  end

end