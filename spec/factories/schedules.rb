FactoryGirl.define do
  factory :schedule do
    start_time { Date.yesterday.to_time + 1.minute }
    end_time { Date.today + 1.minute + 2.days }
    time_unit "daily"
    repeat 1
    after(:build) { |s| s.next_time ||= s.calculate_next_occurence }
  end
end