Rails.application.routes.draw do
  # ユーザー機能に必要な複数のルーティングを１度に生成してくれる
  devise_for :users
  # ルートパスへアクセスすると、lists/index.html.erbが表示される
  root to: "lists#index"
  # tasksコントローラーで使用するアクションの定義
  resources :lists do
    resources :tasks
  end

end
