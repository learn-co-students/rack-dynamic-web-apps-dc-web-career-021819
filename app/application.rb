class Application

  def call(env)
    # def resp

    resp = Rack::Response.new

    # set random nums

    num1 = Kernel.rand(1..10)
    num2 = Kernel.rand(1..10)
    num3 = Kernel.rand(1..10)

    # print numbers to window

    resp.write "#{num1}"
    resp.write "#{num2}"
    resp.write "#{num3}"

    # create control flow for win/lose

    if num1 == num2 && num2 == num3
      resp.write "You Win!"
    else
      resp.write "You Lose."
    end

    resp.finish
  end

end
