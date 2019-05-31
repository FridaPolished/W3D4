class Question < ApplicationRecord

  validates :question, presence: true

  has_many :answer_choices,
    primary_key: :id, 
    foreign_key: :answer_choices_id,
    class_name: "Answer Choice"

  belongs_to :poll, 
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: "Poll"

  has_many :responses,
    through: :response


end