class EnvironmentXDependency < ApplicationRecord
  # associations
  belongs_to :environment
  belongs_to :dependency
end
