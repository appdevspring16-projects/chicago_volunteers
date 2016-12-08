class Organization < ApplicationRecord
  # Direct associations

  has_many   :projects,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :description, :presence => true, :length => { :minimum => 700, :maximum => 900 }

  validates :location, :presence => true

  validates :name, :uniqueness => true

  validates :name, :presence => true

  validates :website, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  default_scope { order("name") }

end
