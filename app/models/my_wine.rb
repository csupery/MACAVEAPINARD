class MyWine < ApplicationRecord
  belongs_to :appellation_winery
  belongs_to :my_wine_cellar
end
