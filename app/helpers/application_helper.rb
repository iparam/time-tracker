module ApplicationHelper
  def flash_messages
    [:notice, :warning, :message, :error].collect do |key|
      content_tag(:div, flash[key], :class => "flash_#{key}") unless flash[key].blank?
    end.join
  end

  # Clears the preceeding divs to allow next divs to flow down the page
  def clearing_span
    content_tag(:span, '', :class => 'clear')
  end
end
