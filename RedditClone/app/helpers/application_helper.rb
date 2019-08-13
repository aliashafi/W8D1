module ApplicationHelper
  def auth_token
    "<input
      type=\"hidden\"
      name=\"authenticity_token\"
      value=\"#{form_authenticity_token}\">".html_safe
  end

  # def return_children(parent)
  #   parent.child_comments.each do |child|
  #     "<li><#{child.content}</li>"
  #     "<a href=\"#{comment_url(child)}\">Reply</a>"
  #   end
  # end
end
