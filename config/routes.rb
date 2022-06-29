Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'todo#index'
   match 'todo/create',:to => 'todo#create',:via => :post
   match'/delete',:to=>'todo#delete',:via=>:post
  #  match'/update',:to=>'todo#update',:via=>:post
  #  match'/update',:to=>'todo#update',:via=>:post
   
end
