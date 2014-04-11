class Song
	# class attributes
	@@play_times = 0
	# readable attributes
	attr_reader :name, :author, :album, :duration
	attr_writer :name, :author, :album, :duration
	
	def duration_in_minutes
		@duration/60.0
	end

	def initialize(name,author,album,duration)
		@name = name
		@author = author
		@album = album
		@duration = duration
	end
	
	# class methods
	def Song.play
		@@play_times += 1
		puts "play #{@@play_times} times!"
	end
end

class CountrySong < Song
	#writable attributes
	attr_accessor :style
	
	def style=(new_style)
		@style = new style
	end

	def initialize(name,author,album,duration)
		super(name,author,album,duration)
		@style = "Country Music"
	end

	def getStyle
		return @style
	end
end

# 不是线程安全的，建议使用Singleton mixin
class SongLogger
	private_class_method :new
	@@logger = nil
	def SongLogger.create
		@@logegr = new unless @@logger
		puts "logger created"
		@@logger
	end
end

song1 = CountrySong.new("Yesterday once more","Carpenter","Old Times",160)

#puts song1.inspect
#puts song1.to_s
puts song1.getName 

song2 = CountrySong.new("Yesterday","Beatles","Old Times",170)
puts song2.getStyle
puts song2.name
puts song1.author
song2.author = "Karen " + song2.author
puts song2.author
puts song2.duration_in_minutes
i=0
while i<10
	Song.play
	i+=1
end

#puts SongLogger.create.object_id
#puts SongLogger.create.object_id
