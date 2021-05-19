Rails.application.routes.draw do
  mount_devise_token_auth_for "Admin", at: "admin"

  mount_devise_token_auth_for "ProductOwner", at: "product_owner"
  as :product_owner do
    # Define routes for ProductOwner within this block.
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
