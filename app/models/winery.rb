class Winery < ApplicationRecord
  has_many :appellation_wineries, dependent: :destroy
  has_many :appellations, through: :appellation_wineries

  accepts_nested_attributes_for :appellations, reject_if: :all_blank, allow_destroy: true
end
