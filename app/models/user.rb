class User < ApplicationRecord
  rolify :before_add => :before_add_method
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private
  def before_add_method
  	roles = [:user]
  end
end