class User < ActiveRecord::Base
  belongs_to :company

  validates :company_id, presence: true
  validates :password, :presence => true
  validates :password, :length => { :in => 6..200}
  validates :name, :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /@/, :message => " is invalid" }
  validates :role, inclusion: { in: ['driver', 'admin']}
  
  def password
    password_hash ? @password ||= BCrypt::Password.new(password_hash) : nil
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, test_password)
    user = User.find_by_email(email)
    if user && user.password == test_password
      user
    else
      nil
    end
  end
end
