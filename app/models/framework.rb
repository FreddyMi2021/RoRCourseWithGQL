class Framework < ApplicationRecord
  # associations
  belongs_to :programming_language
  has_many :dependencies
  has_many :environments
end
