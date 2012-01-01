module ApplicationHelper
  def page_title
    (@content_for_title if @content_for_title).to_s
  end

  def meta_keywords
    if @content_for_meta_keywords
      keywords = @content_for_meta_keywords.to_s
    else
      keywords = 'worship database, worship log, service log, church archive, worship archive, liturgy, litergical, paster\'s notebook, preacher\'s archive, church administrator archive, search sermon, find sermons'
    end
  end

  def meta_description
    if @content_for_meta_description
      description = @content_for_meta_description.to_s
    else
      description = 'Worship Log provides a complete, searchable, and secure archive of worship services. We are bringing the preacher\'s notebook into the new millennium.'
    end
  end

  def mark_required(object, attribute)  
    raw("<span class='required'>*</span>") if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator  
  end  
end
