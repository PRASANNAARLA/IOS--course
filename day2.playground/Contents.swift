import UIKit

var a = 10;
var b = 20;
var sum = 0;
sum = a+b
print(sum)
//String Interpolation
print("The sum is equal to:\(sum)")
//Terminator
print("The sum is ", terminator: "= ")
print(sum)
//Separator
print(1,2,3)
print(1,2,3, separator:"*")

var fName = "Prasanna"
var lName = "Arla"
//Prasanna Arla
print(fName,lName, separator:" ")
//Arla, Prasanna
print(lName,fName, separator:", ")


var str1 = "Bobby"
var str2 = "Bearcat"
var str3 = "-"
print(str1, str3, str2)


//constants (let) and variables (var)

var p = 9.0
let q = 2.0
p = p-q
//q= p+q illegal statement
print(p)

var radius = 2.0
var pi = 3.14
var perimeter = 2 * pi * radius
print("The perimeter of circle is: \(perimeter)")



//Tuples
var httpError = (errorCode:404, errMessage:"Page not found")
print(httpError)
print(httpError.errorCode, terminator:":")
print(httpError.errMessage)


var name = ("Prasanna" , "Arla")
var Namef = name.0
var Namel = name.1
print(Namef,Namel)

