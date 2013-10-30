require './lib/stats.rb'

describe Stats::Stats do

  it "data of file data_1.csv " do
    
    filename = "lib/data_1.csv"
    stats = Stats::Stats.new(4)
	samples = stats.extract_data_csv( filename )
  
    samples.should eq [[130.0, 186.0], [650.0, 699.0], [99.0, 132.0], [150.0, 272.0], [128.0, 291.0], [302.0, 331.0], [95.0, 199.0], [945.0, 1890.0], [368.0, 788.0], [961.0, 1601.0]]
  end

   it "calculate b0 with data_1.csv" do
    filename = "lib/data_1.csv"
    stats = Stats::Stats.new(4)
    samples = stats.extract_data_csv( filename )
    data_x = samples.collect{ |i| i[0]} 
    data_y = samples.collect{ |i| i[1]} 

    b1 = stats.calculate_b1(data_x, data_y)
    b1.should eq 1.7279
    #b1: 1.727932426206986
   end

   it "calculate b1 with data_1.csv" do
    filename = "lib/data_1.csv"
    stats = Stats::Stats.new(4)
    samples = stats.extract_data_csv( filename )
    data_x = samples.collect{ |i| i[0]} 
    data_y = samples.collect{ |i| i[1]} 

    b1 = stats.calculate_b1(data_x, data_y)
    b0 = stats.calculate_b0(b1, data_x, data_y)
    b0.should eq -22.5401
    # b0: -22.552532752034267
   end

  it "calculate r with data_1.csv" do
    filename = "lib/data_1.csv"
    stats = Stats::Stats.new(4)
    samples = stats.extract_data_csv( filename )
    data_x = samples.collect{ |i| i[0]} 
    data_y = samples.collect{ |i| i[1]} 

    r = stats.calculate_r(data_x, data_y)
    r.should eq 0.9545
    # r: 0.9544965741046826
   end

  it "calculate r power two with data_1.csv" do
    filename = "lib/data_1.csv"
    stats = Stats::Stats.new(4)
    samples = stats.extract_data_csv( filename )
    data_x = samples.collect{ |i| i[0]} 
    data_y = samples.collect{ |i| i[1]} 

    r = stats.calculate_r(data_x, data_y)
    r2 = stats.calcuate_r_power_two(r)
    r2.should eq 0.9111
    # r2: 0.9110637099775758
   end

  it "calculate prediction with data_1.csv" do
    filename = "lib/data_1.csv"
    stats = Stats::Stats.new(4)
    samples = stats.extract_data_csv( filename )
    data_x = samples.collect{ |i| i[0]} 
    data_y = samples.collect{ |i| i[1]} 

    b1 = stats.calculate_b1(data_x, data_y)
    b0 = stats.calculate_b0(b1, data_x, data_y)
    p = stats.calculate_prediction(b0, b1)
    p.should eq 644.4294
    # p:644.4293837638623
   end

end