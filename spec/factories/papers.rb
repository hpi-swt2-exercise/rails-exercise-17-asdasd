FactoryGirl.define do
  factory :paper do
    title "COMPUTING MACHINERY AND INTELLIGENCE"
    venue "Berlin"
    year 1984
    authors {build_list :author, 1}
  end

end
