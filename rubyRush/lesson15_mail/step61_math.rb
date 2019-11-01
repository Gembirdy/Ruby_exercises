puts "pi = #{Math::PI}"
puts "e = #{Math::E}"

puts "cos(pi) = #{Math.cos(Math::PI)}"
puts "sin(pi) = #{Math.sin(Math::PI)}"
sin_pi_plus_cos_pi = Math.cos(Math::PI) + Math.sin(Math::PI)
puts "cos(pi) + sin(pi) = #{sin_pi_plus_cos_pi.round(3)}"
