class User < ActiveRecord::Base

def create
User.create(user_params)
end

def user_params
  params.require(:user).permit(:name)
  params.require(:user).permit(:email)
end

has_many :microposts
end
