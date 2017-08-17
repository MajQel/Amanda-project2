Rails.application.routes.draw do
	
	resources :recipes do
		collection do
            get :search
        end
	end

	resources :recipes
	
	root "recipes#index"
end
