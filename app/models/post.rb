# frozen_string_literal: true

class Post < ApplicationRecord
  VALID_SORT_ORDERS = %i[asc desc].freeze

  belongs_to :user
  has_one_attached :cover_image

  before_save :set_slug

  validates :title, :body, :published_at, :cover_image, presence: true

  scope :published, -> { where.not(published_at: nil) }
  scope :sorted_by_date, lambda { |order|
    order = VALID_SORT_ORDERS.find { |sort_order| sort_order.downcase.to_sym == order }

    order("posts.published_at #{order}")
  }

  private

  def set_slug
    self.slug = title.parameterize
  end
end
