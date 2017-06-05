class VotingMailer < ApplicationMailer
  def voting_email(user)
    @user = user
    mail(to: "#{@user.nr}@student.pwr.edu.pl", subject: "Głosowanie na Prowadzącego Roku")
  end
end
