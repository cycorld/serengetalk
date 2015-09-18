class ChatController < FayeRails::Controller
  observe Hehe, :after_create do |post|
    ChatController.publish('/news', post.attributes)
  end
end
