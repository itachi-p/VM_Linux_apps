# test of major machar (訳：結構なお点前で)
describe 'test of some machar' do
	it '1 + 1 equal to 2' do
		expect(1 + 1).to eq 2
	end

	it 'test of arithmetic operater' do
		expect(2 - 1).not_to eq 2
		expect(1 * 1).to be >= 1
		expect(7 % 4).to eq 3
		#expect(5 / 2).to be > 2		#小数点切り捨てされる為failure(テスト失敗)
	end

	it 'LA LA Lies and Truth' do
		expect(1 + 1 == 2).to be_truthy
		expect("a" + "b" == "ab").to be_truthy
		expect("a" + "b" != "AB").to be_truthy
		# 変数の定義も可能
		a = "taichi"
		b = "itachi"
		expect(a == b).to be_falsey
		items = []
		expect(items).to be_empty
	end

	it 'it is included' do
		expect([1,2,3,4,5]).to include 1,3,5
	end

	#指定のエラーが発生することを期待する(そのエラーが発生すればこのexampleはpass(成功)
	it '0 divide' do
		expect{1 / 0}.to raise_error ZeroDivisionError
	end

end