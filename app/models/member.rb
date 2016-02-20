class Member < ActiveRecord::Base
  belongs_to :team

  validates :name, presence: { message: "入力してください"}
end
