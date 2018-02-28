# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/purchase_mailer
  def purchase_mailer
    UserMailerMailer.purchase_mailer
  end

end
