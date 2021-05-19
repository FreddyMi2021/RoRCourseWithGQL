class Project < ApplicationRecord
  # associations
  has_many :sprints
  belongs_to :product_owner
end
