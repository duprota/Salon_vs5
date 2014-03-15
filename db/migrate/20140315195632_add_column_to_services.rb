class AddColumnToServices < ActiveRecord::Migration
  def change
    add_column :services, :price, :string
  end
end
