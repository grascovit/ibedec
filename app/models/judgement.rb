# frozen_string_literal: true

class Judgement < ApplicationRecord
  VALID_SORT_ORDERS = %i[asc desc].freeze
  CATEGORIES = %i[consumer construction sfh_sfi social_security].freeze

  belongs_to :user
  has_one_attached :file

  validates :title, :category, :published_at, presence: true

  scope :sorted_by_date, lambda { |order|
    order = VALID_SORT_ORDERS.find { |sort_order| sort_order.downcase.to_sym == order }

    order("judgements.published_at #{order} NULLS LAST, judgements.created_at #{order}")
  }
end
