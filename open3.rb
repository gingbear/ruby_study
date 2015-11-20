require "open3"

# stdin, stdout, stderr, wait_thr = *Open3.popen3('ls')

# p "test"

# # こちらから読む
# stdout.each do |line|
#   print line
# end

# stderr.each do |line|
#   print line
# end

# p wait_thr.value.exitstatus # => 0

p "start"
Open3.popen3('ruby input.rb') { |stdin, stdout, stderr, wait_thr|
    stdin.print "testtest"
    stdin.close
    p stdout.read
    p stderr.methods
    p stderr.read
    p "END"
}
# o, e, s = Open3.capture3('eval `ssh-agent -s`; ssh-add; ruby input.rb')
# p o
# p e
# p s.exitstatus
# p s.success?
p "end"