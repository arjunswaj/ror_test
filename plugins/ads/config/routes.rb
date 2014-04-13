Ads::Engine.routes.draw do
	root :to => 'myad#adindex'
	get "/adindex" => "myad#adindex", :as => 'my_ad' 
end
