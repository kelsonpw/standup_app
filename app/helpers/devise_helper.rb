module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.sum("") { |msg| content_tag(:li, msg) }
    notice = I18n.t("errors.messages.not_saved", count: resource.errors.count, resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-error alert-block alert-fixed">
      <h4>#{notice}</h4>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end
