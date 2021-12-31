class MyWineCellar < ApplicationRecord
  belongs_to :user
  belongs_to :wine_cellar

  enum wine_type: WINE_TYPE
  enum size: SIZE
end
