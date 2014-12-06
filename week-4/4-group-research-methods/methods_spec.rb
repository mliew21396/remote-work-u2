require_relative "my_solution"

# describe 'my_array_finding_method' do
#   let(:array) { ["I", "want", 3, "pets", "but", "only", "have", 2] }

#   it "selects all words with a 't' in the original order" do
#     expect(my_array_finding_method(array, "t")).to eq ["want","pets","but"]
#   end

#   it "selects all words with an 'a' in the original order" do
#     expect(my_array_finding_method(array, "a")).to eq ["want","have"]
#   end

# end

# describe 'my_hash_finding_method' do
#   let(:hash) { {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
#             "Annabelle" => 0, "Ditto" => 3} }

#   it "returns all names of pets who are 3 years old" do
#     expect(my_hash_finding_method(hash, 3)).to eq ["Hoobie", "Ditto"]
#   end

#   it "returns all names of pets who are 2 years old" do
#     expect(my_hash_finding_method(hash, 2)).to eq ["Annabelle"]
#   end

# end

# describe 'my_array_modification_method!' do
#   let(:array) { ["I", "want", 3, "pets", "but", "only", "have", 2] }

#   it "adds one to any integer in the array" do
#     expect(my_array_modification_method!(array, 1)).to eq ["I", "want", 4, "pets", "but", "only", "have", 3 ]
#   end

#   it "operates destructively by altering the original array" do
#      expect(my_array_modification_method!(array, 1).object_id).to eq(array.object_id)
#   end

# end

# describe 'my_hash_modification_method!' do
#   let(:hash) { {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
#   "Annabelle" => 0, "Ditto" => 3} }

#   it "adds a certain number of years to any integer in the hash" do
#     expect(my_hash_modification_method!(hash, 2)).to eq {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6,
#   "Annabelle" => 2, "Ditto" => 5}
#   end

#   it "operates destructively by altering the original hash" do
#      expect(my_hash_modification_method!(hash, 2).object_id).to eq(hash.object_id)
#   end

# end

describe 'my_array_sorting_method!' do
  let(:array) { ["I", "want", 4, "pets", "but", "only", "have", 3] }

  it "converts all elements to strings and sorts them alphabetically" do
    expect(my_array_sorting_method!(array)).to eq ["3", "4", "I", "but", "have", "only", "pets", "want"]
  end

  it "operates non-destructively" do
     expect(my_array_sorting_method(array).object_id).to_not eq(array.object_id)
  end

end

# describe 'my_hash_sorting_method!' do
#   let(:hash) { {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5} }

#   it "returns an array that orders each animal first based on age (youngest to oldest) then alphabetically by name if they share the same age" do
#     expect(my_hash_sorting_method!(hash)).to eq [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]]
#   end

#   it "operates non-destructively" do
#      expect(my_hash_sorting_method!(hash).object_id).to_not eq(hash.object_id)
#   end

# end

# describe 'my_array_deletion_method!' do
#   let(:array) { ["I", "want", 3, "pets", "but", "only", "have", 2] }
#   let(:hash) { {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5} }

#   it "deletes all words that contain an 'a'" do
#     expect(my_deletion_method!(array, "a")).to eq ["I", 4, "pets", "but", "only", 3 ]
#   end

#   it "operates destructively" do
#      expect(my_deletion_method!(array, "o").object_id).to eq(array.object_id)
#   end

# end

# describe 'my_hash_deletion_method!' do
#   let(:hash) { {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5} }

#   it "deletes an animal based on name" do
#     expect(my_deletion_method!(hash, "George")).to eq {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
#   end

#   it "operates destructively" do
#      expect(my_deletion_method!(hash, "George").object_id).to eq(hash.object_id)
#   end

# end