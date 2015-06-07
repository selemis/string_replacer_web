module ApplicationHelper

  def nav_link(link_text, link_path, css_class)
    class_name = current_page?(link_path) ? "#{css_class}" : ''
    content_tag(:li, class: class_name) do
      link_to(content_tag(:span, link_text), link_path)
    end
  end


end
