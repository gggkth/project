class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    t.integer :select1, default: 0
    t.integer :select2, default: 0
    t.integer :select3, default: 0
    t.integer :select4, default: 0
    t.integer :select5, default: 0

    t.timestamps null: false
    end
  end
end
