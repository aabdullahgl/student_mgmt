class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  validates :first_name, :last_name, :email, :adress, presence: true
  paginates_per 2
  has_one_attached :profile_image

  validates :email, uniqueness: true
  # validates :date_of_birth, presence: true, numericality: true

  after_save :display_student_age

  def display_student_age
    if self.date_of_birth.present?
      age= Date.today.year - self.date_of_birth.year
      puts "========== Age of the student is #{age} =========="
    else
      puts "========== Age can not be calculated without date_of_birth =========="
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def age
    if self.date_of_birth.present?
      "#{Date.today.year - self.date_of_birth.year}"
    else
      "= Age can not be calculated without date_of_birth ="
    end
  end
end
