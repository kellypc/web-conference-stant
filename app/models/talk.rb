class Talk < ActiveRecord::Base
  validates :title, uniqueness: { case_sensitive: false }

  # belongs_to :track

  def self.track_a
    talks = []
    start_time = Time.parse("09:00")
    next_time = nil

    all.each_with_index do |talk, index|
      if next_time == Time.parse("12:00") 
        talks << lunch_time 
      else 
        talks << talk_info(index, start_time, next_time, talk)
      end

      next_time = start_time + talk.duration.to_i.minutes

      start_time += talk.duration.to_i.minutes

      # break if start_time == Time.parse("12:00")
    end

    talks
  end

  def self.talk_info(index, start_time, next_time, talk) 
    {
      start_time: index == 0 ? start_time : next_time,
      title: talk.title,
      duration: talk.duration
    }
  end
  
  def self.lunch_time
    {
      start_time: Time.parse("12:00"),
      title: "Almoço"
    }
  end
end
