class Environment < ApplicationRecord
  # associations
  belongs_to :programming_language
  belongs_to :framework, optional: true
  belongs_to :content_management_system, optional: true
  belongs_to :database
  belongs_to :product_owner
  has_many :environment_x_dependencies
  has_one :sprint
end
