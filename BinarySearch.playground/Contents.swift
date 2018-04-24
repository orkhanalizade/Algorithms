//: Playground - noun: a place where people can play

let array = [1, 3, 6, 9, 15, 17, 23, 29, 32]
var lowIndex = 0
var highIndex = array.count - 1

func binarySearch(array: [Int], valueToSearch: Int) -> Int? {
    while lowIndex <= highIndex {
        let middleIndex = (lowIndex + highIndex) / 2
        let foundValue = array[middleIndex]
        
        if foundValue == valueToSearch {
            return middleIndex
        } else if foundValue > valueToSearch {
            highIndex = middleIndex - 1
        } else if foundValue < valueToSearch {
            lowIndex = middleIndex + 1
        }
    }
    
    return nil
}

_ = binarySearch(array: array, valueToSearch: 17)
