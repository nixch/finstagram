class Updatabl < ActiveRecord::Migration[5.0]

  def change

change_table :posts do |t|  #update_table
      t.string :avatar_url

    end

  end

end