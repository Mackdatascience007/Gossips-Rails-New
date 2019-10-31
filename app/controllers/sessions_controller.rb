class SessionsController < ApplicationController
    #before_action :authenticate_user, only: [:index]


    
    def index
        @user = User.all
    end

    def new
        #id = session_path[:user_id]
        #@user = User.find(id)
    end
​
    def create
            user = User.find_by(email: email_dans_ton_params)
        # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
        if user && user.authenticate(password_dans_ton_params)
            session[:user_id] = user.id
            redirect_to new_session_path
        # redirige où tu veux, avec un flash ou pas
        else
            flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
        end
    end
​

    def destroy
        session.delete(:user_id)
    end

​

    # private
    # def authenticate_user
    # unless current_user
    #     flash[:danger] = "Please log in."
    #     redirect_to login
    # end
    # end
end


