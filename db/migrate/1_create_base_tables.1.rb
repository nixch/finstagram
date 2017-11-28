class CreateBaseTables < ActiveRecord::Migration[5.0]

  def change

    
  create_table :fish do |t|
      t.references :user
      t.references :post
      t.text :fish
      t.timestamps
    end

  end

end