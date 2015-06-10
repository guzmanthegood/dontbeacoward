module ApplicationHelper
  def notice_icon(action)
    case action
    when "danger"
      fa_icon "warning"
    when "success"
      fa_icon "check"
    else
      fa_icon "info"
    end
  end
end
