 FactoryGirl.define do
   factory :post do
     title "Post Title"
     body "Post bodies must be pretty long."
     user

      after(:build) do |comment|
      comment.class.skip_callback(:create, :after, :send_favorite_emails)
    end
  end
end