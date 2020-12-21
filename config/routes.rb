Rails.application.routes.draw do
  get    '/login'     => 'session#new'
  post   '/login'     => 'session#create'
 
  get    '/logout'    => 'session#destroy'

  get    '/signup'    => 'users#new'
  post   '/signup'    => 'users#create'

  get    '/profile'   => 'users#profile'
  get    'users/profile'
 
  get    '/new' => 'posts#last'
  get    '/posts/show'

  get    '/posts/new'
  post   '/posts'     => 'posts#create'
  post   '/comments'  => 'comments#create'

  get    'posts/remove'

  root   'posts#last'
end
