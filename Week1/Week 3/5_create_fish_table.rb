class CreateTables < ActiveRecord::Migration[5.1]

  def change

    
  create_table :fish do |t|
      t.references :user
      t.references :post
      t.text :text
      t.timestamps
    end

  end

end