import Foundation

var someArr: [Int] = [5, 3, 1, 7, 3, 9, 20, 1, 7, 2]

// decreasing order
print(someArr.sorted(by: {(s1: Int, s2: Int) -> Bool in
        return s1 > s2
}))

print()

// increasing order
print(someArr.sorted(by: {(s1: Int, s2: Int) -> Bool in
        return s1 < s2
}))

print()

// simple closure
func rememberFriends(names: String...) -> [String] {
    var memory: [String] = []
    for name in names {
        memory.append(name)
    }
    return memory
}

let friends: [String] = rememberFriends(names: "Olgaaaaa", "Pavel", "Nikita")

print(friends.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1.count < s2.count
}))

print()

// print dict
var friendsNamesLen = [Int: String]()
for name in friends {
    friendsNamesLen[name.count] = name
}

func getNameByLen(key: Int) {
    print("Key: \(key), Value: \(friendsNamesLen[key] ?? "None")")
    
}

getNameByLen(key: 3)
getNameByLen(key: 8)

print()

func twoArraysTask(arr1: [String], arr2: [Int]) {
    var arr1 = arr1; var arr2 = arr2
    if arr1.isEmpty {
        arr1.append("Unknown")
        print("Array of Strings: ", arr1)
    }
    if arr2.isEmpty {
        arr2.append(-1)
        print("Array of Ints", arr2)
    }
}

print("Example of empty arrays")
twoArraysTask(arr1: [], arr2: [])
print("Example of full arrays")
twoArraysTask(arr1: ["asdasd"], arr2: [1,2,3])
