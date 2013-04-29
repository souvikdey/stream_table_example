class AddCityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    
    change_column :users, :salary, :decimal, :precision => 8, :scale => 2
  end
end
