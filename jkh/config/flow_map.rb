class FlowMap

  include Stealth::Flow

	flow :test1 do
		state :ask_example
	end

  flow :hello do
    state :say_hello
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end

end
