module ApplicationHelper
  def smartnav
    links = ''
    if @current_user.try(:is_admin)
      links += "<li>" + link_to('View users', users_path) + "</li>"
    end

    if @current_user.present?
      links += "<li>"
      links += link_to('Logout ' + @current_user.username, user_login_path, :data => {:method => :delete, :confirm => 'Really logout?'})
      links += "</li>"
      links += "<li>"
      links += link_to('Edit ' + @current_user.username, edit_user_path(@current_user.id))
      links += "</li>"
    else
      links += "<li>#{ link_to('Sign up', new_user_path) }</li>"
      links += "<li>#{ link_to('Sign in', user_login_path) }</li>"
    end

    links
  end
end