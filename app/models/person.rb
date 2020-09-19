class Person < ApplicationRecord
  self.table_name = "people"

  # relationships
  has_many :children, class_name: "Children", foreign_key: "father_id"
  has_many :children, class_name: "Children", foreign_key: "mother_id"
  belongs_to :father, class_name: "Father", optional: true
  belongs_to :mother, class_name: "Mother", optional: true

  # attributes
  validates :name, presence: true
end
