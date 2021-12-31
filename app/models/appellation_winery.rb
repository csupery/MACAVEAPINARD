class AppellationWinery < ApplicationRecord
  belongs_to :appellation
  belongs_to :winery
end
