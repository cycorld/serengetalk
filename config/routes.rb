Rails.application.routes.draw do
  devise_for :users
   root :to => "ohoh#main_serengetalk"
   # 용철님. 로그인 기능 완료되면 여기 ohoh#main_login으로 바뀌어야해요.
   # 1완료!
   get         ":controller(/:action(/:id))"
   post        ":controller(/:action(/:id))"
end