class Picture < ApplicationRecord
  validates :artist, presence: true
  validates :title, length: { in: 3..20,
    wrong_length: "Your title must be between %{count}" }
  validates :url, presence: true, uniqueness: true

  # @picture.valid?
  # @picture.errors.messages
end
