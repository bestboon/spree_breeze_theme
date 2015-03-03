Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]
end
