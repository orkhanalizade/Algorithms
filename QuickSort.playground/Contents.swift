//: Playground - noun: a place where people can play

func quickSort(from array: [Int]) -> [Int] {
    if array.count < 2 {
        return array
    } else {
        let pivot = array[0]
        let lessArray = array.filter { $0 < pivot }
        let greaterArray = array.filter { $0 > pivot }
        
        return quickSort(from: lessArray) + [pivot] + quickSort(from: greaterArray)
    }
}

let qSort = quickSort(from: [10, 5, 2, 3])
print(qSort)
