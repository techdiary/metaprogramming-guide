p "defining class Rubyist........"
class Rubyist
  def welcome(*args)
    "Welcome " + args.join(' ')
  end

  private def say_hello(name)
    "#{name} rockz"
  end
end


obj = Rubyist.new
p "puts ( obj.send(:welcome, 'famous', 'Rubyist'))"
puts ( obj.send(:welcome, "famous", "Rubyist"))
p "even private method can be called by send()"
puts obj.send(:say_hello, 'Matz')
p "Can we call private method directly?"
puts obj.say_hello('matz')
