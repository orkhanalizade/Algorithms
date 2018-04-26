//: Playground - noun: a place where people can play

var arrayToSort = [2, 1, 4, 0, 6, 3]

func findSmallestElementIndex(from array: [Int]) -> Int {
    var smallestElementIndex = 0
    
    for (index, value) in array.enumerated() {
        if value < array[smallestElementIndex] {
            smallestElementIndex = index
        }
    }
    return smallestElementIndex
}

func getSortedArray(from array: inout [Int]) -> [Int] {
    var sortedArray = [Int]()
    
    for _ in array {
        let smallestElementIndex = findSmallestElementIndex(from: array)
        sortedArray.append(array.remove(at: smallestElementIndex))
    }
    
    return sortedArray
}

print(getSortedArray(from: &arrayToSort))
