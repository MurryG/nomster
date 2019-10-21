class NotificationMailer < ApplicationMailer

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    mail(to: @place_owner.email,
      subject: "Someone has left a comment on #{@place.name}'s page.")
  end

end
