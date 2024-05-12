# To deliver this notification:
#
# AssignedNotifier.with(record: @post, message: "New post").deliver(User.all)

class AssignedNotifier < ApplicationNotifier
  # Add your delivery methods
  #
  deliver_by :action_cable do |config|
    config.channel = "Noticed::NotificationsChannel"
    config.stream = ->{ recipient }
    config.message = ->{ params.merge( user_id: recipient.id) }
  end
  #
  # bulk_deliver_by :slack do |config|
  #   config.url = -> { Rails.application.credentials.slack_webhook_url }
  # end
  #
  # deliver_by :custom do |config|
  #   config.class = "MyDeliveryMethod"
  # end

  # Add required params
  required_param :message
end
