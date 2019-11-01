require'./step44/bridge.rb'

puts 'u r riding'

puts 'there is a river'

bridge = Bridge.new
if !bridge.isOpen?
    bridge.openBridge
    puts "river is crossed\ncongrats"
end