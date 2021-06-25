# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :string(255)
#
class User < ApplicationRecord
  has_secure_password
end
