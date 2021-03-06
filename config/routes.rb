Rails.application.routes.draw do
  
  # トップページ
  root to: 'tasks#index';
  
  # ログイン周り
  get    'login' , to: 'sessions#new';
  post   'login' , to: 'sessions#create';
  delete 'logout', to: 'sessions#destroy';


  # ユーザ周り
  
  # /signup へのアクセスでuserが新規作成できるようにする
  get 'signup', to: 'users#new';
  
  # index, new, destroyは無し
  # TODO: show, edit, updateを後々作りたい願望
  #resources :users, only: [:show, :create, :edit, :update];
  resources :users, only: [:create];


  # タスク周り
  resources :tasks;
  
end
