require './hello'
describe "Hello" do
  context "テスト" do
    it 'test' do
      expect(Hello.execute).to eq "hello"
    end
  end
end