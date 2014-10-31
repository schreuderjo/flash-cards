class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.belongs_to :deck

      t.timestamps
    end
  end
end
