require 'time'

class DateTime
  def current_time_with_same_timezone
     time = Time.parse('2019-03-19T11:52:17+0100')
     Time.now.getlocal(time.utc_offset)
  end
end
