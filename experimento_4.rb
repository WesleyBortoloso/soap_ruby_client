require 'savon'

client = Savon.client(wsdl: "http://www.dneonline.com/calculator.asmx?wsdl")

num1 = 10
num2 = 5

response = client.call(:add, message: { intA: num1, intB: num2 })
add_result = response.body[:add_response][:add_result]
puts "Adição de #{num1} e #{num2}: #{add_result}"

response = client.call(:subtract, message: { intA: num1, intB: num2 })
subtract_result = response.body[:subtract_response][:subtract_result]
puts "Subtração de #{num1} e #{num2}: #{subtract_result}"

response = client.call(:multiply, message: { intA: num1, intB: num2 })
multiply_result = response.body[:multiply_response][:multiply_result]
puts "Multiplicação de #{num1} e #{num2}: #{multiply_result}"

response = client.call(:divide, message: { intA: num1, intB: num2 })
divide_result = response.body[:divide_response][:divide_result]
puts "Divisão de #{num1} por #{num2}: #{divide_result}"
