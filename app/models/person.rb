class Person < ApplicationRecord
  self.table_name = "people"

  # relationships
  belongs_to :father, class_name: "Person", optional: true
  belongs_to :mother, class_name: "Person", optional: true

  # attributes
  validates :name, presence: true
  validates :identifier, presence: true

  #methods
  def children
    self.class.where("father_id = ? OR mother_id = ?", self.id, self.id)
  end
end
