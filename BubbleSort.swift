let numbers = [3,6,1,2,9,6,8,4,3,7,3,6,1,2,9,6,8,4,3,7]

func swap(array: inout [Int], index1: Int, index2: Int) {
    let temp = array[index1]
    array[index1] = array[index2]
    array[index2] = temp
}

func bubbleSort(array: [Int]) {
    var arr = array
    for j in 0...arr.count - 1 {
        for i in 0..<(arr.count - j - 1)  {
            if arr[i] > arr[i + 1] {
                swap(array: &arr, index1: i, index2: i + 1)
//              arr.swapAt(i, i + 1)
                print(arr)
            }
        }
    }
}
bubbleSort(array: numbers)

