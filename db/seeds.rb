roles = ['teacher', 'ta', 'student']
5.times do
 course = Course.create(
   name: Faker::Coffee.blend_name
 )
  3.times do
    user = User.create(
      first_name: Faker::TvShows::RickAndMorty.character,
      last_name: Faker::TvShows::StarTrek.specie
    )
    Enrollment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id
    )
  end
end
puts 'Data has been seeded'