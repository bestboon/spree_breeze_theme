module Spree
  LocaleController.class_eval do
    protect_from_forgery except: :set
  end
end
