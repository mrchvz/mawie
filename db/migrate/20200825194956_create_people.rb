class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    # ID | DATA_TYPE: INTEGER | INDEX = TRUE
    create_table :people do |t|
      # NAME | DATA_TYPE: STRING
      t.string :name

      # IDENTIFIER | DATA_TYPE: STRING
      t.string :identifier

      # FATHER_ID | DATA_TYPE: INTEGER | INDEX = TRUE
      t.references :father

      # MOTHER_ID | DATA_TYPE: INTEGER | INDEX = TRUE
      t.references :mother

      #CREATED_AT | DATA_TYPE: DATETIME
      #UPDATED_AT | DATA_TYPE: DATETIME
      t.timestamps

    end
  end
end
