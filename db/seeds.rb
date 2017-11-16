puts "Администратор"
admin = User.new(email: 'admin@courses.com', password: 'admin123456', account_role: 'admin')
admin.skip_confirmation!
if admin.valid?
  admin.save
else
  puts "ERRORS: #{admin.errors.full_messages}"
end
