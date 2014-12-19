class AddPasswordToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :password, :string
  end
end
