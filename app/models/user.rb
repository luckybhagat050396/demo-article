class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_save do |user|
    UserMailer.welcome_email(resource,params[:user][:password]).deliver_now
  end

   
 # end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :confirmable
end
