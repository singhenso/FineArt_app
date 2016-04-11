class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to users_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)

  end

end


 # create_table "users", force: :cascade do |t|
 #    t.string   "name"
 #    t.string   "email"
 #    t.string   "password_digest"
 #    t.datetime "created_at",      null: false
 #    t.datetime "updated_at",      null: false
 #  end


