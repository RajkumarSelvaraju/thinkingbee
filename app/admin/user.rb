ActiveAdmin.register User do


actions :all, except: [:edit, :destroy]

  # Added New Location button in View Page
  action_item :only => :show do
    link_to('New', new_admin_user_path)
  end

  index do
    render partial: 'index', :users => @users
  end

  show do
    attributes_table do
      row :email
      row :confirmed_at
      row :current_sign_in_at
      row :confirmed_at
    end
  end


  controller do
    def scoped_collection
      @users = current_company.users
    end

    def create
       # params[:user][:role_id] = Role.second.id
      @user = User.new(user_params)
      @user.company_id = current_user.company_id
      if @user.save
        redirect_to admin_users_path
      else
        render 'new'
      end
    end

    private
    def user_params
      params.require(:user).permit(:email,:password,:password_confirmation, :company_id)
    end
  end

  permit_params :email, :password , :password_confirmation, :company_id

  form do |f|
     render partial: 'form', :users => @users
  end

end
