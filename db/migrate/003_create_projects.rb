class CreateProjects < ActiveRecord::Migration
  def change
    create_table    :projects do |t|
      t.string        :name
      t.text          :description
      t.date          :date_create
      t.references    :owner,      index: true
      t.references    :user
      t.string        :status

      t.timestamps
    end
  end
end
