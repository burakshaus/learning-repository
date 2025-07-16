//
//  main.swift
//  LearningSpaceCLI
//
//  Created by Burak  on 16.07.2025.
//
print("Hello, World!")

// let first = 12
// var second = 24
// var myVariable: Double = 2.3

// print(first,second,myVariable)

// let label = "The width is "
// let width = 94
// let widthLabel = label + String(width)
// /Users/burak/Documents/GitHub/learning-swift/LearningSpaceCLI/LearningSpaceCLI/main.swift:17:24 Binary operator '+' cannot be applied to operands of type 'String' and 'Int'

let apples = 3
let oranges = 5
//let floatnumber = 1.5
//let appleSumamry = "I have \(apples) apples."
//let fruitSummary = "I have \(apples + oranges) pices of fruit"
//let floattrying = "I have \(floatnumber) number of apples :)"

//print(appleSumamry)
//print(fruitSummary)
//print(floattrying)

let quotation = """
                Even though there's whitespace to the left, 
                the actual lines aren't indented.
                    Except for this line.
                Double quotes (") can appear without beaing escaped
                I still have \(apples + oranges) piece of fruit.
                """
//print(quotation)

var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

var occupations:[String:String] = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Public Relations"

// print(occupations["Jayne"] ?? "")
fruits.append("Blueberries")

fruits = []
occupations = [:]

let emptyArray: [String] = []
let emptyDictionary: [String:Float] = [:]

let individualScores = [75,43,103,87,12]
var teamscore = 0
for score in individualScores{
    if score > 50{
        teamscore += 3
    }else {
        teamscore += 1
    }
}

// print(teamscore)

let scoreDecoration = if teamscore > 10{
    "🎉"
}else{
    ""
}

// print("Score:" , teamscore, scoreDecoration)

var optionalString : String? = "Hello"

// print(optionalString==nil)
// orints false

var optionalName: String?
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else{
    greeting = "Hello, person"
}

// print(greeting)


let nickname: String? = nil
let fullName: String? = "John Appleseed"
let informalGreeting = "Hi, \(nickname ?? fullName)"
// print(informalGreeting)

if let nickname {
    print("Hey, \(nickname)")
    // prints nothing
}

let vegetable = ""
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)")
// switch must be exhaustive so default case is always needed
default:
    print("")
}
let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]

var largest = 0
var kind = ""
for (kindofnumber, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
            kind = kindofnumber
        }
    }
}

// print(largest , kind)

var n = 2
while n < 100 {
    n *= 2
}

// print(n)

var m = 2
repeat {
    m *= 2
}while m < 0
// print(m)

var total = 0
for i in 0..<4 {
    total += i
}
// print(total)

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}

// print(greet(person: "Bob", day: "Wednesday"))
// print(greet("John", on: "Wednesday"))

func calculateStatistics(scores: [Int]) -> (min:Int, max:Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max{
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5,3,100,3,9])
// print(statistics.sum)
// print(statistics.2)





