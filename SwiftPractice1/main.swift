//
//  main.swift
//  SwiftPractice1
//
//  Created by guest on 2018/12/03.
//  Copyright © 2018年 Ledharni. All rights reserved.
//

import Foundation

print("-----Q1-----")
//Q1
func sayHello(){
    let hello:String = "Hello World"
    for num  in 1...10{
        print("\(num)回: \(hello)")
    }
}
sayHello()
func sayHelloEach(){
    let hello:String = "Hello World"
    var array:[String] = []
    
    for _ in 1...10{
        array.append(hello)
    }
    array.forEach({
        print($0)
    })
}
sayHelloEach()

//Q2
print("-----Q2-----")
func fizzBuzz(){
    
    for num in 1...100 {
        if num%15 == 0 {
            print("fizzBuzz")
        }else if num%3 == 0{
            print("Fizz")
        }else if num%5 == 0{
            print("Buzz")
        }else{
            print(num)
        }
    }
}
fizzBuzz()

//Q3
print("-----Q3-----")
func prime(){
    let prime = Int(arc4random() % 100)+1
    var num:Int = 0
    
    for divisor in 1...prime{
        if prime % divisor == 0{
            num += 1
        }
    }
    if num == 2 {
        print("\(prime)は素数です")
    }else{
        print("\(prime)は素数ではありません")
    }
}
prime()
//Q4
print("-----Q4-----")
func prime2(){
    let prime = Int(arc4random()%100) + 1
    var num:Int = 0
    
    
    
    for divisor in 1...prime {
        num = 0
        for i in 1...divisor{
            if divisor % i == 0 {
                num += 1
            }
        }
        if(num == 2){
            print(divisor)
        }
    }
}
prime2()
print("-----Q5-----")
func q5(){
    let prime = Int(arc4random()%2100)+1
    var num:Int = 0
    if prime%4 == 0 {
        num += 1
    }
    if prime%400 == 0 {
        num += 1
    }
    if prime%100 == 0{
        num -= 1
    }
    if(num == 1){
        print("\(prime)は閏年です")
    }else{
        print("\(prime)は閏年ではない")
    }
}
q5()
print("-----Q6-----")
func Q6(){
    var swith:Bool = true
    let prime = Int(arc4random()%100)+1
    var numMax = 100
    var numMin = 1
    var num:Int = 0

    print("input your number")
    while swith {
        let keyboard = FileHandle.standardInput
        let inputed = keyboard.availableData
        let str = String(data: inputed, encoding: .utf8)!.replacingOccurrences(of: "\n", with: "")
        var num = Int(str)

        if num == prime {
            print("当たった！！")
            swith = false
        }else{
            if num! < prime {
                numMin = num!
            }else{
                numMax = num!
            }
            print("\(numMin)~~\(numMax)")
        }
    }
}
Q6()
print("-----Q7-----")
func Q7(){
    for i in 1...100{
        if i%3 == 0 || i%10 == 3{
            print(i)
        }
        
    }
}
Q7()
print("-----Q8-----")
func Q8(){
    let prime = Int(arc4random()%2100)+1
    
    switch prime % 12 {
    case 0:
        print("\(prime)は申")
    case 1:
        print("\(prime)は酉")
    case 2:
        print("\(prime)は戌")
    case 3:
        print("\(prime)は亥")
    case 4:
        print("\(prime)は子")
    case 5:
        print("\(prime)は丑")
    case 6:
        print("\(prime)は寅")
    case 7:
        print("\(prime)は卯")
    case 8:
        print("\(prime)は辰")
    case 9:
        print("\(prime)は巳")
    case 10:
        print("\(prime)は午")
    case 11:
        print("\(prime)は未")
    default:
        print("")
    }
}
Q8()
print("-----Q9-----")
func Q9(){
    let prime = Int(arc4random()%100)
    var array:[Int] = []
    
    //総和
    for divisor in 0...prime{
        array.append(divisor)
    }
    print(array.reduce(0) { (num1, num2) -> Int in
        num1 + num2
    })
    print("\(array)\n----\(prime)")
    
    //偶数
    let newArray = array.filter { $0%2==0 }
    print(newArray.reduce(0) { (num1, num2) -> Int in
        num1 + num2
    })
    print("\(newArray)\n----偶数")
    
    //奇数
    let newKArray = array.filter { $0%2==1 }
    print(newKArray.reduce(0) { (num1, num2) -> Int in
        num1 + num2
    })
    print("\(newKArray)\n----奇数")
    
}
Q9()
print("-----Q10-----")
func Q10(){
    var swith:Bool = true
    
    print("input your number1")
    let num1 = keyboard()
    print("input your number2")
    let num2 = keyboard()
    print("演算記号")
    while swith{
        let str = keyboardSrt()
        if str == "+" || str == "-" || str == "*" || str == "/"{
            swith = false
            print("結果: \(cal(num1: num1, num2: num2, combine: str))")
        }else{
            print("未対応の記号です,再入力してください。")
        }
    }
}
func cal(num1:Int, num2:Int, combine:String) -> Int{
    var num3:Int = 0
    switch combine {
    case "+":
        num3 = num1 + num2
        return num3
    case "-":
        num3 = num1 - num2
        return num3
    case "*":
        num3 = num1 * num2
        return num3
    case "/":
        num3 = num1 / num2
        return num3
    default:
        return 0
    }
}
func keyboard()->Int{
    let keyboard = FileHandle.standardInput
    let inputed = keyboard.availableData
    let str = String(data: inputed, encoding: .utf8)!.replacingOccurrences(of: "\n", with: "")
    let num = Int(str)
    return num ?? 0
}
func keyboardSrt()->String{
    let keyboard = FileHandle.standardInput
    let inputed = keyboard.availableData
    let str = String(data: inputed, encoding: .utf8)!.replacingOccurrences(of: "\n", with: "")
    return str
}
Q10()
print("-----Q11-----")
func Q11(){
}

func getNum( n1:inout Int, n2:inout Int) -> Int{
    let oldN1 = n1
    n1 = n2
    n2 += oldN1
    return oldN1
}
var n1 = 0
var n2 = 1
for _ in 1...17{
    print(getNum(n1: &n1, n2: &n2))
}

Q11()

print("-----Q12-----")

func Q12(){
    let prime = Int(arc4random()%100)
    let prime2 = Int(arc4random()%100)
    
    print("X = \(prime)")
    print("Y= \(prime2)")
    
    if prime == prime2{
        print("X == Y")
    }else if prime > prime2{
        print("xはyより大きい。")
    }else {
        print("yはxより大きい。")
    }
    
}
Q12()
print("-----Q13-----")

func Q13(){
    let prime = Int(arc4random()%100)
    let prime2 = Int(arc4random()%100)
    
    print("X = \(prime), Y = \(prime2)")
    if prime == prime2{
        print("同じ")
        
    }else if prime > prime2{
        
        print(prime)
    }else {
        
        print(prime2)
    }
}
Q13()
print("-----Q14-----")
func Q14(){
    print("月を入力してください")
    var bool:Bool = true
    while bool {
        let mon = keyboard()
        switch mon {
        case 1:
            print("日数は31")
            bool = false
        case 2:
            print("日数は28 or 29")
            bool = false
        case 3:
            print("日数は31")
            bool = false
        case 4:
            print("日数は30")
            bool = false
        case 5:
            print("日数は31")
            bool = false
        case 6:
            print("日数は30")
            bool = false
        case 7:
            print("日数は31")
            bool = false
        case 8:
            print("日数は31")
            bool = false
        case 9:
            print("日数は30")
            bool = false
        case 10:
            print("日数は31")
            bool = false
        case 11:
            print("日数は30")
            bool = false
        case 12:
            print("日数は31")
            bool = false
        default:
            print("入力が間違っています")
        }
    }
}
Q14()
print("-----Q15-----")
func Q15(){
    print("血液型を入力してください")
    let str = keyboardSrt()
    let array = ["大吉","中吉","小吉","小凶","凶","大凶"]
    let arrayIndex = Int(arc4random_uniform(UInt32(array.count)))
    
    switch str {
    case "A":
        print("A型の人のモチベーションは完璧主義。")
        print("今日の運勢は\(array[arrayIndex])")
    case "B":
        print("B型の人のモチベーションは天邪鬼。")
        print("今日の運勢は\(array[arrayIndex])")
    case "AB":
        print("AB型の人のモチベーションは猫みたいに気分屋。")
        print("今日の運勢は\(array[arrayIndex])")
    case "O":
        print("O型の人のモチベーションは基本的に低空飛行。楽に生きる。")
        print("今日の運勢は\(array[arrayIndex])")
    default:
        print("この血液型dataは存在しない。")
        print("でも今日の運勢は\(array[arrayIndex])")
    }
}
Q15()
print("-----Q16-----")
func Q16(){
    let prime = Int(arc4random()%101)
    print("\(prime)点は\(evatwo(poinds: prime))評価：\(eva(poinds: prime))")
}
func eva(poinds:Int) -> String{
    let str:String = poinds >= 80 ? "優" : poinds >= 70 ? "良" : poinds >= 60 ? "可" : poinds < 60 ? "不可" : ""
    return str
}
func evatwo(poinds:Int) -> String{
    let str:String = poinds >= 60 ? "合格" : "不合格"
    return str
}
Q16()
print("-----Q17-----")
func Q17(){
    var num2 = 0
    for _ in 1...10 {
        if(num2 <= 100){
            print("num1を入力してください")
            let num1 = keyboard()
            num2 += num1
            print("合計: \(num2)")
        }else{
            break
        }
    }
}
Q17()
print("-----Q18-----")
func Q18(){
    var array:[Int] = []
    var arrayU:[Int] = []
    var arrayD:[Int] = []
    for _ in 1...10{
        let i = Int(arc4random()%101)
        array.append(Int(i))
    }
    print("--昇順--")
    array.sort(by: {$0 < $1})
    for i in 0..<array.count{
        arrayU.append(array[i])
    }
    print(arrayU)
    print("--降順--")
    array.sort(by: {$0 > $1})
    for i in 0..<array.count{
        arrayD.append(array[i])
    }
    print(arrayD)
}
Q18()
print("-----Q19-----")
func Q19(){
    var array:[Int] = []
    
    for _ in 1...10{
        let i = Int(arc4random()%101)
        array.append(Int(i))
    }
    
    let arrayU = array.filter{ $0 % 2 == 0 }
    let arrayD = array.filter{ $0 % 2 != 0 }
    print("--偶数--")
    print(arrayU)
    print("--奇数--")
    print(arrayD)
}
Q19()
print("-----Q20-----")
func Q20(){
    print("中間試験の点数を入力してください")
    let num1 = keyboard()
    print("期末試験の点数を入力してください")
    let num2 = keyboard()
    let prime = num1 + num2
    
    if num1 >= 60 && num2 >= 60 {
        print("合格")
    }else if prime >= 130 {
        print("合格")
    }else if num1 >= 90 || num2 >= 90{
        print("合格")
    }else{
        print("不合格")
    }
    
}
Q20()
print("-----Q21-----")
func Q21(){
    let str = "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee"
    var int:Int = 0
    let split = str.components(separatedBy: " ")
    var keyWord:[String:Int] = [:]
}
Q21()
print("-----Q22-----")
func Q22(){
    }
Q22()
print("-----Q23-----")

func Q23(){
    let prime = Int(arc4random()%100)
    let str = String(prime, radix:2)
    print("\(prime)の二進数は\(str)")
}

Q23()
print("-----Q24-----")
func Q24(){
    var array:[Int] = []
    var arrayU:[Int] = []
    
    for no in 1...5{
        print("\(no)番目数字")
        let num = keyboard()
        array.append(num)
    }
    array.sort(by: {$0 < $1})
    for i in 0..<array.count{
        arrayU.append(array[i])
    }
    print(arrayU)
}
Q24()

print("-------Class編-------")

print("-----Q1-----")
let pokemon1 = Pokemon(name: "Hoge",level: 5,ability:Ability(name: "eatBanana", damege: 0))
pokemon1.displayStatus()
pokemon1.doAbility()
print("-----Q2-----")
let pikachu = Pikachu(level: 10)
pikachu.displayStatus()
pikachu.levelUp()
print("-----Q3-----")
let pidgey = Pidgey()
pidgey.displayStatus()
print("-----Q4-----")
let pikachu1 = Pikachu(level: 20)
pikachu1.doAbility()
pikachu1.levelUp()
pikachu1.displayStatus()



