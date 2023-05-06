# frozen_string_literal: true

class NewsletterSubscriber < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
