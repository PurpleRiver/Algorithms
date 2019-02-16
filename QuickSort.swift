import Foundation

func performQuickSort(arrayToSort : [Int]) -> [Int] {
    if arrayToSort.count == 1 {
        return arrayToSort
    }
    
    let pivot:Int = arrayToSort.count - 1
    var leftArray:[Int] = []
    var rightArray:[Int] = []
    
    for i in 0..<pivot {
        if arrayToSort[i] < arrayToSort[pivot] {
            leftArray.append(arrayToSort[i])
            
        } else if arrayToSort[i] > arrayToSort[pivot] {
            rightArray.append(arrayToSort[i])
        }
    }
    
    print("leftArray:  + \(leftArray)")
    print("rightArray:  + \(rightArray)")
    
    var leftSortedArray:[Int]
    
    if leftArray.count > 1 {
        leftSortedArray = performQuickSort(arrayToSort: leftArray)
    } else {
        leftSortedArray = leftArray
    }
    
    var rightSortedArray:[Int]
    if rightArray.count > 1 {
        rightSortedArray = performQuickSort(arrayToSort: rightArray)
    } else {
        rightSortedArray = rightArray
    }
    
    let resultArray = concatenateArrays(leftSortedArray: leftSortedArray, rightSortedArray: rightSortedArray, pivot: arrayToSort[pivot])
    print(resultArray)
    return resultArray
    
}

func concatenateArrays(leftSortedArray: [Int],  rightSortedArray: [Int], pivot : Int) -> [Int] {
    
    var resultArray:[Int] = []
    for l in leftSortedArray {
        resultArray.append(l)
    }
    
    resultArray.append(pivot)
    
    for r in rightSortedArray {
        resultArray.append(r)
    }
    return resultArray
}

var numbersToSort: [Int] = []

for _ in 0..<100 {
    numbersToSort.append(Int(arc4random_uniform(UInt32(1000))))
}

print(performQuickSort(arrayToSort: numbersToSort))
