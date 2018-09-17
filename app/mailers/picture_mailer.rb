class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "pharbcare@gmail.com", subject: "投稿内容確認メール"
  end
end
