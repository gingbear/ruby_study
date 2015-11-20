class Optional
  def self.execute(test1: 'Test1', test2: 'Test2', **opts)
    p "#{test1}, #{test2}"
    p opts
  end
end

# Optional.execute({test2: "TEST2"})
Optional.execute({t: 4})