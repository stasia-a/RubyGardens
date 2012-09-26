module ApplicationHelper
  def menu_link

    content_for :navigation do
      content_tag(:li,link_to('Home', home_path))
    end

    content_for :navigation do
      content_tag(:li,link_to('About', about_path))
    end

    #content_for :navigation do
    #  content_tag(:li,link_to('Who We Are', who_we_are_path))
    #end
    content_for(:navigation)
  end
end
