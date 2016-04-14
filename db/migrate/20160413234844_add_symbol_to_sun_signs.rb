class AddSymbolToSunSigns < ActiveRecord::Migration
  def change
  	add_column :sun_signs, :symbol, :string
  end
end
