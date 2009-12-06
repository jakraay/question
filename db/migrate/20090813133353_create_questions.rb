class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.text :text
      t.integer :question_order
      t.boolean :multiple_choice
      t.boolean :allow_new      
      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
