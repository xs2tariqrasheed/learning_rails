class CheckStatusChannel < ApplicationCable::Channel
  def subscribed
    @name = params[:name]
    @data = {text: "string here ....."}
    stream_for @name
  end

  def received(data)
    CheckStatusChannel.broadcast_to(name, {data: @data})
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
