Ads::Engine.routes.draw do
	root :to => 'pages#index'
	get "/index" => "pages#index", :as => 'page_ads' 
end
