class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :username
      t.string :lastname

      t.timestamps
    end
  end
end
