class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_one :fighter

  accepts_nested_attributes_for :fighter     

  def fighter
    super || build_fighter
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, profile_attributes: [:name, :avatar, :weight, :height, :experience, :id, :user_id])
  end

end
