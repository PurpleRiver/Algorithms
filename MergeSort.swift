
let numbers = [3,6,8,2,1,9,7,4,6,9,4,3,6,5,3]

func mergeSort(array: [Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var left = left
    var right = right
    var result = [Int]()
    
    while left.count > 0 && right.count > 0 {
        
        if left.first! < right.first! {
            result.append(left.removeFirst())
            
        } else {
            result.append(right.removeFirst())
        }
    }
    return result + left + right
}

mergeSort(array: numbers)
