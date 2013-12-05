require './time_avg'

describe Array do
  
  describe "#average_time_of_day" do
    it "should give correct average when times are of different hours and days" do
      time_array = ["1:51pm", "1:56pm", "2:01am", "2:06am", "2:11am"]
      expect(time_array.average_time_of_day).to eq("2:01am")
    end
    # it "should give correct average when times are around the switch to 1:00" do
    #   time_array = ["12:51pm", "12:56pm", "1:01pm", "1:06pm", "1:11pm"]
    #   expect(time_array.average_time_of_day).to eq("1:01pm")
    # end
  end

end