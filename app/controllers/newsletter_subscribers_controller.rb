# frozen_string_literal: true

class NewsletterSubscribersController < ApplicationController
  def create
    @newsletter_subscriber = NewsletterSubscriber.new(newsletter_subscriber_params)

    if @newsletter_subscriber.save
      redirect_back(fallback_location: root_path,
                    success: 'Você receberá nossas notícias assim que elas forem publicadas')
    else
      redirect_back(fallback_location: root_path, alert: @newsletter_subscriber.errors.full_messages.join("\n"))
    end
  end

  private

  def newsletter_subscriber_params
    params.require(:newsletter_subscriber).permit(:email)
  end
end
