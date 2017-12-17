def source_code(filename)
  File.open(filename).each_line do |line|
  puts line
  end
end
source_code(__FILE__)
