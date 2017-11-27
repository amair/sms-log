module SmsHelper
    ALLOWABLE_PERIOD = 30 * 1000 # 30 secs

    
  def format_timestamp_old ts
    if (DateTime.now.strftime('%Q').to_i-ts.to_i) < ALLOWABLE_PERIOD
      DateTime.strptime(ts, '%Q')
    else
      ts
    end
  end
  
  def format_timestamp ts
      if ts.match(/^(\d)+$/)
        DateTime.strptime(ts, '%Q')
      else
        'Invalid format'
      end
  end
  
  
end
