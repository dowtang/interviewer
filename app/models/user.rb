class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar,
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"
    
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => 'interview-dt', :access_key_id => 'AKIAINQJNFFK2CPHPWRQ', :secret_access_key => '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'}
  end

end