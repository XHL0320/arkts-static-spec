// 3.11 Type void or undefined - Swift Playground 验证代码
// 请复制到 Swift Playground 中运行，并把输出贴回

// Swift 中 Void 是空元组 () 的别名
func f1() -> Void {
    return ()
}

func f2() {
    // no return is OK
}

let v: Void = ()
let u: () = v

// Void 可作为泛型实参
struct Box<T> {
    let value: T
}

let b1 = Box<Void>(value: ())
let b2 = Box<()>(value: ())

// [Void] 数组
let arr: [Void] = [(), ()]

print("Swift Void value:", v)
print("Swift Box<Void>:", b1.value)
print("Swift Void array count:", arr.count)
print("Swift Void verified")

/*
预期输出类似：
Swift Void value: ()
Swift Box<Void>: ()
Swift Void array count: 2
Swift Void verified
*/