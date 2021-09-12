class Link < ApplicationRecord
  validates :url, format: { with: /\Ahttp[s]?:\/\/.+/ }
  validates :url, presence: true
end
