class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    t.string :username
    t.string :usermail
    t.string :topic
    t.text :usersuggest

      t.timestamps null: false
    end
  end
end
