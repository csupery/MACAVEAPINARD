class Appellation < ApplicationRecord
  has_many :appellation_wineries, dependent: :destroy
end
