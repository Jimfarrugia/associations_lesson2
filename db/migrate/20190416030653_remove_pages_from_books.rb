class RemovePagesFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :pages, :integer
  end
end
