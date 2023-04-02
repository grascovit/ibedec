# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :cover_image
  has_many_attached :images

  validates :title, :body, presence: true
end
