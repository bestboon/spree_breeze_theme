module Spree
  class ErrorsController < Spree::StoreController
    def error404
      render status: :not_found
    end
  end
end