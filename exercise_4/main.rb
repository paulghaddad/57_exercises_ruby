def obtain_noun
  print "Enter a noun: "
  gets.chomp
end

def obtain_verb
  print "Enter a verb: "
  gets.chomp
end

def obtain_adjective
  print "Enter a adjective: "
  gets.chomp
end

def obtain_adverb
  print "Enter a adverb: "
  gets.chomp
end

def main
  noun = obtain_noun
  verb = obtain_verb
  adjective = obtain_adjective
  adverb = obtain_adverb

  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

main
