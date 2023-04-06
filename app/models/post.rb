# frozen_string_literal: true

class Post < ApplicationRecord
  VALID_SORT_ORDERS = %i[asc desc].freeze

  belongs_to :user
  has_one_attached :cover_image
  has_many_attached :images

  validates :title, :body, :cover_image, presence: true

  scope :published, -> { where.not(published_at: nil) }
  scope :sorted_by_date, lambda { |order|
    order = VALID_SORT_ORDERS.find { |sort_order| sort_order.downcase.to_sym == order }

    order("posts.published_at #{order} NULLS LAST, posts.created_at #{order}")
  }
end
