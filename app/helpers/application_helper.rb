module ApplicationHelper

  def flash_class(level)
    case level
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-block"
      else "alert #{level}"
    end
  end
  
  def button_close_modal
    content_tag 'button', raw('&times;'), 'data-dismiss' => 'modal',
      'aria-hidden' => 'true', :style =>  "right:0px;", :type => 'button',
      :class => 'close'
  end



end
