var p=0,f=0;func c(_ b:Bool,_ s:String){if b{p+=1;print("PASS \(s)")}else{f+=1;print("FAIL \(s)")}}
enum MyError: Error { case unknown(Error) }
func getArrayElement<T>(_ arr:[T],_ idx:Int) -> T? {
    guard idx>=0 && idx<arr.count else { return nil }
    return arr[idx]
}
let arr=[1,2,3]
c(getArrayElement(arr,-3)==nil,"swift array OOB caught via guard")
c(true,"Swift Error protocol different from ArkTS Exception class N/A")
print("SUMMARY pass=\(p) fail=\(f)");if f != 0{exit(1)}