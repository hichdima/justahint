Justahint::Application.routes.draw do

  get "category/category"

  root :to => 'welcome#index'

  get 'post/new'

  post 'post/create'

  get 'post/show'

  get 'post/:id' => 'post#show'

  get 'category/:id' => 'category#category'

  get 'post/:id/edit' => 'post#edit'

  put 'post/:id/edit' => 'post#save_changes'


end
