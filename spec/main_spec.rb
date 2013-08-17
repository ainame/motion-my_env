describe "Application 'motion-my_env'" do
  describe 'MY_ENV' do
    it 'is Hash' do
      MY_ENV.class.should == Hash      
    end
    
    it 'should have keys' do
      MY_ENV.keys.should == %w{development test production}
    end

    it 'should have value each keys' do
      MY_ENV['development'].should == {'host'=> 'http://dev.mixi.jp'}
      MY_ENV['test'].should == {'host'=> 'http://test.mixi.jp'}
      MY_ENV['production'].should == {'host' => 'http://mixi.jp'}
    end
  end
end
