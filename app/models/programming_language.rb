class ProgrammingLanguage < ApplicationRecord
  # associations
  has_many :frameworks
  has_many :environments
  has_many :content_management_systems
end
