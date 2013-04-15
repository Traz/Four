class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string :name
      t.text :content
      t.references :owner, index: true
      t.references :author, index: true
      t.string :status

      t.timestamps
    end
  end
end
