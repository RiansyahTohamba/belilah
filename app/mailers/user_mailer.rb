class UserMailer < ApplicationMailer

  def purchase_mail(order,email_to)
    @order = order
    attachments["order_#{@order.id}.pdf"] = WickedPdf.new.pdf_from_string(
      render_to_string(pdf: 'receipt',
            template: 'purchase_mail.html.erb',
            layout: 'pdf.html'), { :hash_with_wickedpdf_options }
    )
    mail(to: email_to, subject: "[Belilah] Pesanan Anda")
  end
end
