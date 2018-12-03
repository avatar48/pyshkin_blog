class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def feedback
    mail(to: "abc@abc.ru",
         subject: "Feedback",
         body: "test")
  end

end
