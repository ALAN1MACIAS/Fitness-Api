Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :fitnessregs # api/v1/fitnessregs
    end
  end
end
