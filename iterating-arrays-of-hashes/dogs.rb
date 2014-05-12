class Dogs
  POOR = (0..5).to_a.sample
  AVERAGE = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe = {
      :name => {:first => "Joe", :last => "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Smith"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [{:name => "Fido", :size => :large, :owner => joe},
             {:name => "Yapper", :size => :small, :owner => joe},
             {:name => "Bruiser", :size => :large, :owner => joe},
             {:name => "Tank", :size => :huge, :owner => sarah},
             {:name => "Beast", :size => :large, :owner => sarah},
             {:name => "Harleigh", :size => :medium, :owner => andrew},
             {:name => "Trixie", :size => :small, :owner => andrew},]
  end

  #only edit below this line

  def small_dogs
    small_array = []
    @dogs.each do |dog|
      if dog[:size] == :small
        small_array << dog
      end
    end
    p small_array
  end

  def huge_dog
    huge_array = []
    @dogs.each do |dog|
      if dog[:size] == :huge
        huge_array << dog
      end
    end
    p huge_array.first
  end

  def large_dog_names
    large_array = []
    @dogs.each do |dog|
      if dog[:size] == :large
        large_array << dog[:name]
      end
    end
    p large_array
  end

  def joes_large_dogs
    joe_large_array = []
    @dogs.each do |dog|
      if dog[:size] == :large && dog[:owner][:name][:first] == "Joe"
        joe_large_array << dog[:name]
      end
    end
    p joe_large_array
  end

  def sizes
    size_array = []
    @dogs.each do |dog|
      size_array << dog[:size]
    end
    p size_array.uniq
  end

  def owners
    owner = []
    @dogs.each do |dog|
      owner << dog[:owner][:name][:first] + " " + dog[:owner][:name][:last]
    end
    p owner.uniq
  end

  def average_owners
    average_owners = []
    @dogs.each do |dog|
      if dog[:owner][:owner_quality] == AVERAGE
        average_owners << dog[:owner][:name][:first] + " " + dog[:owner][:name][:last]
      end
    end
    p average_owners.uniq
  end
end
