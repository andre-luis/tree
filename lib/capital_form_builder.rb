class CapitalFormBuilder < ActionView::Helpers::FormBuilder
  def label(attribute)
  	index = "activerecord.attributes.#{self.object_name}.#{attribute.to_s}"
    ("<label for=\"#{self.object_name}_#{attribute.to_s}\">#{I18n.t(index).capitalize}</label>").html_safe
  end
end