class Proposal < ApplicationRecord

  after_create :send_message

  belongs_to :freelancer
  belongs_to :job
  has_one :contract, dependent: :destroy
  has_many_attached :documents

  def send_message
    TwilioClient.new.send_text(job.client, "#{freelancer.email} has applied for #{job.title}")
  end
end