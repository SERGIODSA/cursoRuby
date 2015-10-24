class AddImageRemoveUrlToPins < ActiveRecord::Migration
  def change
    add_column :pins, :image_remove_url, :string
  end
end
