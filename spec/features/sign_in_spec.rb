 require 'rails_helper'
 require 'support/test_factories'
  
 describe "Sign in flow" do

  include TestFactories
 
   describe "successful" do
     it "redirects to the topics index" do
      user = authenticated_user
      visit root_path
     end
   end
 end