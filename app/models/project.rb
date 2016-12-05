class Project < ApplicationRecord
  # Direct associations

  belongs_to :location

  belongs_to :organization

  # Indirect associations

  # Validations

  validates :day_id, :presence => true

  validates :description, :presence => true

  validates :location_id, :presence => true

  validates :name, :presence => true

  validates :number_of_volunteers_required, :presence => true

  validates :organization_id, :presence => true

end
