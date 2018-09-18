class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    user_info = User.find(@picture.user_id)
    mail to: user_info.email, subject: "投稿内容確認メール"
  end
end
