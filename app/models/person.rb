class Person < ApplicationRecord
  self.table_name = "people"
  has_many :children, class_name: "Children", foreign_key: "father_id"
  belongs_to :father, class_name: "Father", optional: true
  belongs_to :mother, class_name: "Mother", optional: true
end