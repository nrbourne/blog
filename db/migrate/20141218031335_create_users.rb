class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :emailAddr
      t.string :pword
      t.string :uname

      t.timestamps
    end
  end
end
