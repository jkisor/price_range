require './lib/companies'
require './lib/company'

describe Companies do
  let(:company_a) { Company.new('A', 1000..3000) }
  let(:company_b) { Company.new('B', 6000..10000) }
  let(:company_c) { Company.new('C', 500..2500) }
  let(:collection) { [company_a, company_b, company_c] }
  let(:companies) { Companies.new(collection)}
  
  context 'given no range' do
    it 'exposes all companies' do
      expect(companies.in_price_range(0...0)).to eq collection
    end
  end

  context 'given min and max' do
    it 'exposes companies that overlap the range' do
      expect(companies.in_price_range 2500..5000).to eq [company_a, company_c]
    end
  end

  context 'given only min' do
    it 'exposes companies that include min' do
      expect(companies.in_price_range(600..0)).to eq [company_c]
    end
  end

  context 'given only max' do
    it 'exposes companies that include max' do
      expect(companies.in_price_range(0..2000)).to eq [company_a, company_c]
    end
  end
end