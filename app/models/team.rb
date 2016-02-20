class Team < ActiveRecord::Base
  has_many :members

  validates :name, presence: { message: "入力してください"}
end
