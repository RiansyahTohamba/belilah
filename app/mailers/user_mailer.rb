class UserMailer < ApplicationMailer

  def purchase_mail(order,email_to)
    @order = order
    puts "=== SIDEKIQ EMAIL PURCHASING ==="
    mail to: email_to, subject: "[Belilah] Pesanan Anda"
  end
end
