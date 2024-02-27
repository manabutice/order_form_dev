class OrderMailerJob < ApplicationJob
  queue_as :dafault

  def perform(order_id)
    OrderMailer.mail_to_user(order_id).deliver
  end
end