def subtract(a,b)
subtract=a-b
end

def add(a,b)
sum=a+b
end

array=[]
def sum(array)
array.inject(0, :+)
end

def multiply(*numbers)
    numbers.reduce(:*)
end

def power(a,b)
  power_result=a**b

end

def factorial(fact)
  fact_result=fact.downto(1).inject(:*)
end
