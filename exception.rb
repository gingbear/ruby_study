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
          raise 'エラーを発生 2!'
        end
      end
   rescue
      p 'エラーが起きました。'
      # raise 'error 3!'
      false
    else
      p 'エラーは起きませんでした。'
      true
    ensure
       p '実行が保証されている。'
    end
  end
end

p Exception.test_1

