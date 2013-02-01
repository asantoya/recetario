class AddColumnToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :receta_id, :integer

  end
end
