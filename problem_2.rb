# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.

fibo_one, fibo_two, even_values_sum = 0, 1, 0
while fibo_two <= 4_000_000
  fibo_two, fibo_one = fibo_one + fibo_two, fibo_two
  even_values_sum += fibo_two if fibo_two.even?
end
p even_values_sum