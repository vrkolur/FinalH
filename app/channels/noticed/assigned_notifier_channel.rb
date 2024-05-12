class Noticed::AssignedNotifierChannel < ApplicationCable::Channel
  def subscribed
    stream_from "assigned_notifier_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
