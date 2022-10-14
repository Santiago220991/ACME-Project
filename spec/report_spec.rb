require './report'

describe 'report' do
  context "When testing report class" do 
    it 'Should return a number of hours that employees have been at the office within the same time frame' do
      arr1=["MO10:00-12:00","TU10:00-12:00","TH01:00-03:00","SA14:00-18:00","SU20:00- 21:00"]
      arr2=["MO10:00-12:00","TH12:00-14:00","SU20:00-21:00"]
      arr3=["MO10:00-12:00","TH12:00-14:00","SU20:00-21:00"]
      report =Report.new()
      expect(report.common_hours(arr2,arr1)).to eq 2
      expect(report.common_hours(arr2,arr3)).to eq 3
      expect(report.common_hours(arr1,arr3)).to eq 2 
    end
    
    it 'Should return a number of hours that employees have been at the office within the same time frame' do
      arr1=["MO10:15-12:00","TU10:00-12:00","TH13:00-13:15","SA14:00-18:00","SU20:00-21:00"]
      arr2=["MO10:00-12:00","TH12:00-14:00","SU20:00-21:00"]
      report =Report.new()
      expect(report.common_hours(arr1,arr2)).to eq 3
    end
  end
  end