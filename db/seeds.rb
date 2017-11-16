puts "Администратор"
admin = User.new(email: 'admin@courses.com', password: 'admin123456', account_role: 'admin')
admin.skip_confirmation!
admin.save if admin.valid?

puts "Видеокурс"
course = Course.new(title: "NodeJS")
if course.valid?
  course.save
  course.videos << Video.create(link: "https://youtu.be/ILpS4Fq3lmw")
  course.videos << Video.create(link: "https://youtu.be/N-4p2_NEr9w")
  course.videos << Video.create(link: "https://youtu.be/5s9GamjYQpo")
  course.videos << Video.create(link: "https://youtu.be/AYwWHMda7Yo")
  course.videos << Video.create(link: "https://youtu.be/g740J-RyoR4")
  course.videos << Video.create(link: "https://youtu.be/xs6sSylr-88")
  course.videos << Video.create(link: "https://youtu.be/fhwtUW9dXrA")
  course.videos << Video.create(link: "https://youtu.be/CrevZgTc7ow")
  course.videos << Video.create(link: "https://youtu.be/6hUceqsmfCw")
  course.videos << Video.create(link: "https://youtu.be/QBHzMp65iKg")
  puts "Видеокурс: #{course.title}"
  puts "Количество видео: #{course.videos.count}"
end
