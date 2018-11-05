class AddTitleToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :title, :text
  end
end
