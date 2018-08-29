Rails.application.routes.draw do
  namespace :api do
      get "/one_contact_url" => 'contacts#one_contact_action'
      get "/many_contacts_url" => 'contacts#many_contacts_action'
    end
end
