80.times do
  t1 = Challenge::Template.first
  c1 = t1.challenge

  t2 = t1.dup
  t2.save

  c2 = c1.dup
  c2.template_id = t2.id
  c2.save
end
