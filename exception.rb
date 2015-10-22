class Exception
  def self.test_1
    p "test_1"
    begin
      [0,1,2].each do |i|
        p i
        begin
          if i == 1
            raise 'error!'
          end
        rescue
          p 'rescue 1'
          raise 'error 2!'
        end
      end
   rescue
      p 'rescue 2'
      # raise 'error 3!'
      false
    else
      p 'no error'
      true
    ensure
       p 'ensure 2'
    end
  end
end

p Exception.test_1

