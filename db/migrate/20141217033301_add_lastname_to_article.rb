class AddLastnameToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :lastname, :string
  end
end
