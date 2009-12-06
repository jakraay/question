class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :age
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
