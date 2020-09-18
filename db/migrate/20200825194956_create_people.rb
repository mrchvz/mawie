class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :identifier
      t.references :father
      t.references :mother
      t.string :father_identifier
      t.string :mother_identifier
      t.timestamps
    end
  end
end
