class ProductsController < ApplicationController

  Rails.application.routes.draw do

    resources :products, only: [:index]

  end

end



class UsersController < ApplicationController

  Rails.application.routes.draw do

    resources :users, only: [:index]

  end

end

