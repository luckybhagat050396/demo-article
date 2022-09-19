class UserMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
        attachments['download.jpeg'] = File.read ('app/assets/images/download.jpeg')
        mail(to: user.email, subject: 'Welcome Email')

    end
end
        