Shoes.app height: 200, width: 300 do
  background lightblue
  stack marginL 10 do
    caption strong "Shoes stopwatch", :font => "osaka"

    flow do
	button "start" do
		@time = Time.now
		@label.replace "#{@time.strgtime '%l:%M:%S %p'}start", :font => "osaka"
    end

    button "stop" do
	    @label.replace "stop: ", strong("#{Time.now - @time}"), "minutes through", :font => "osaka"
    end
  end

  @label = para strong("start", :font => "osaka"), "click start", :font => "osaka"
end

