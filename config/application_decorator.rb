module Pintuservice
  class Application.class_eval do
  	require Rails.root.join("lib/custom_public_exceptions")
    config.exceptions_app = CustomPublicExceptions.new(Rails.public_path)
  end
end