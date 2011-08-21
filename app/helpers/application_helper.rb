# -*- encoding : utf-8 -*-
require "net/http"
module ApplicationHelper
  def broadcast(channel,&block)
    message = {:channel => channel, :data => capture(&block),:ext => {:auth_token => FAYE_TOKEN}}
    uri = URI.parse("http://192.168.1.21:9292/faye")
    Net::HTTP.post_form(uri, :message => message.to_json)
  end
end
