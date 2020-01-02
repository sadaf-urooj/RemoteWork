class Contract < ApplicationRecord

  after_create :send_message

  belongs_to :freelancer
  belongs_to :proposal
  has_one :job, :through => :proposal

    def send_message
     TwilioClient.new.send_text(freelancer, "#{job.client.email} has hired you for job: #{job.title}" )
    end
end
