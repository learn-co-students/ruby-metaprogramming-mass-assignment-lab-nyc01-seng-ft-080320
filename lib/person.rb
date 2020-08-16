class Person
  # attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  def initialize(attributes)
    attributes.each do |k, v|
      self.class.attr_accessor(k)
      self.send(("#{k}="), v)
    end
  end
  # def initialize(name:, birthday:,hair_color:,eye_color:,height:,weight:, handed:, complexion:, t_shirt_size:, wrist_size:, glove_size:, pant_length:, pant_width:)
  #   @name = name
  #   @birthday = birthday
  #   @hair_color = hair_color
  #   @eye_color = eye_color
  #   @height = height
  #   @weight = weight
  #   @handed = handed
  #   @complexion = complexion
  #   @t_shirt_size = t_shirt_size
  #   @wrist_size = wrist_size
  #   @glove_size = glove_size
  #   @pant_length = pant_length
  #   @pant_width = pant_width
  # end
end

avi_attributes = {:name => "Avi",
  :birthday => "01/29/1984",
  :hair_color => "brown",
  :eye_color => "brown",
  :height => "short",
  :weight => "good",
  :handed => "lefty",
  :complexion => "decent",
  :t_shirt_size => "medium",
  :wrist_size => "small",
  :glove_size => "normal",
  :pant_length => "32",
  :pant_width => "32"}
avi = Person.new(avi_attributes)