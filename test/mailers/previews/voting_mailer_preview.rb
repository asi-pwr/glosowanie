# Preview all emails at http://localhost:3000/rails/mailers/voting_mailer
class VotingMailerPreview < ActionMailer::Preview
  def voting_email
    VotingMailer.voting_email(User.first)
  end
end
