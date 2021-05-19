class Sprint < ApplicationRecord
  # associations
  belongs_to :project
  belongs_to :environment
end
