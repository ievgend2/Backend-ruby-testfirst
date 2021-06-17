
VOWELS=["a","e","i","o","u"]

def translate_each(word1)
n=word1.size
part = ''
(1..n).each do |num|
  if VOWELS.include? word1[num-1]
    if word1[num-1] != "u" and word1[num-2]!='q'
      part = word1[num-1]
      break

    end

  end
end
arr = word1.partition(part)
arr[1] << arr[2] << arr[0] <<'ay'
end

def translate(word1)
result=[]
array = word1.split(" ")
puts array.inspect

array.each do |elemnt|
  element_new = translate_each(elemnt)
  result.append(element_new)
end
result.join(" ")
end
