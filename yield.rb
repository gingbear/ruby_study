module Yield
  def test
    yeild(1,2)
  end

  def test_2
    test do |a, b|
      p a + b
    end
  end
end