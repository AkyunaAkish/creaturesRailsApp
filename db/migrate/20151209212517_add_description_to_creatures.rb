class AddDescriptionToCreatures < ActiveRecord::Migration
  def change
    add_column :creatures, :description, :string
  end
end
