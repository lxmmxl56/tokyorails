class Rsvp < ActiveRecord::Base
  scope :attending, where(:response => 'yes')
  scope :not_attending, where(:response => 'no')

  def member
    Member.where(:uid => member_id).first
  end
end
