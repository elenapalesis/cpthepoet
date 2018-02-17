class CreatePoems < ActiveRecord::Migration[5.1]
  def change
    create_table :poems do |t|
      t.string :greek_title, default: 'Untitled', null: false
      t.string :english_title, default: 'Χωρίς τίτλο', null: false
      t.text :greek_body
      t.text :english_body
      t.boolean :published, default: false, index: true, null: false
    end
  end
end
