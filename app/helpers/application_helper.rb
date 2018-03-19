module ApplicationHelper
  def active_class(link_path) #Helper for active link instead of JS
    current_page?(link_path) ? 'nav-link active' : "nav-link"
  end
end
