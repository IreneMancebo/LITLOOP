class AddAddressToNooks < ActiveRecord::Migration[7.0]
  def change
    add_column :nooks, :address, :string
  end
end
