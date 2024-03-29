class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def authsch
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.from_omniauth(request.env['omniauth.auth'])
  
      if @user.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Auth.sch'
        sign_in_and_redirect @user, event: :authentication
      else
        redirect_to root_path, alert: @user.errors.full_messages.join('\n')
      end
    end
end
