class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :from
      t.string :to
      t.string :subject
      t.text   :description
      t.date   :deadline
      t.timestamps 
    end
  end
end