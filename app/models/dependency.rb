class Dependency < ApplicationRecord
  # associations
  belongs_to :framework, optional: true
  has_many :environment_x_dependencies
  belongs_to :content_management_system, optional: true
end
