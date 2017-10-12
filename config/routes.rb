# coding: utf-8
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # API用
  namespace :spot, {format: 'json'} do
    get "/" , :action => "index"
  end
  namespace :detailspot, {format: 'json'} do
    get "/" , :action => "index"
  end
  namespace :subspot, {format: 'json'} do
    get "/" , :action => "index"
  end
end
