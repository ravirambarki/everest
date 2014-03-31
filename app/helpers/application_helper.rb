module ApplicationHelper
  def site_name
    I18n.t(:company)
  end 
  
  def contact_number
    I18n.t(:company_phone)
  end 
  
  def android_app_file
    I18n.t(:android_app_file)
  end
  
  def contact_email
    I18n.t(:company_email)
  end 
  
  def meta_keywords_default
    I18n.t(:meta_keywords)
  end
  
  def meta_description_default
    I18n.t(:meta_description)
  end
  
  def title_default
    I18n.t(:title_default)
  end 
  
end
