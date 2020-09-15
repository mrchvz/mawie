class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.references :father
      t.references :mother
      t.timestamps
    end
  end
end
