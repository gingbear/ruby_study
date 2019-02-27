Dir.glob("**/*.rb").map {|path| require "./#{path.gsub('.rb', '')}"}
def reload
  Dir.glob("**/*.rb").map {|path| load "./#{path}"}
end

