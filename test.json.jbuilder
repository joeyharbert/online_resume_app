json.first_name "Brandon"
json.last_name "Grafer"
json.email "coolguy@yahoo.com"
json.phone_number "123-123-4567"
json.short_bio "Wow I am so cool"
json.linkedin "https://www.linkedin.com/in/cseangrafer/"
json.twitter "joeyharbert"
json.website "http://www.joeyhphoto.com"
json.github "https://github.com/SIeep"
json.photo "my_face.jpg"
json.array! (@experiences) do |experience|
  json.start_date experience.start_date
  json.end_date experience.end_date
  json.company_name experience.company_name
  json.job_title experience.job_title
  json.details experience.details
end
json.array (@education) do |school|
  json.start_date school.start_date
  json.end_date school.end_date
  json.degree school.degree
  json.university school.university
  json.details school.details
end
json.skills ["Ruby", "HTML", "Horse back riding", "tweet making"]
json.capstone do
  json.name "Bloopy"
  json.description "It'll bloop ya!"
  json.url "bloopy.net"
  json.screenshot "animg.jpg" 
end