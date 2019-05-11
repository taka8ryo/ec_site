class AddUnitToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :unit, :string, null: false, default: 'yen'
  end
end
