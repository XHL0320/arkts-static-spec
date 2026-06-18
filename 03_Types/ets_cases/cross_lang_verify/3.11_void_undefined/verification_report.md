# 3.11 void/undefined - Java & Swift 验证报告

## Java 实测环境

- OpenJDK 1.8.0_492
- 路径：WSL Ubuntu 22.04

## Swift 实测环境

- Swift 5.10
- 路径：WSL Ubuntu 22.04
- 可执行：`~/swift-5.10/usr/bin/swift`

---

## Java 实测结果

### 1. void 作为返回类型 ✅

**文件：** `JavaVoidValid.java`

```java
static void f1() { return; }
static void f2() { }
```

**运行输出：**
```text
Java void return only verified
```

**结论：** Java `void` 只能作为返回类型，`return;` 或无 return 都合法。

### 2. void 作为变量 ❌

**文件：** `JavaVoidInvalid.java`

```java
void v;
```

**编译输出：**
```text
JavaVoidInvalid.java:9: error: illegal start of expression
        void v;
        ^
```

### 3. void 作为泛型实参 ❌

**文件：** `JavaVoidGenericInvalid.java`

```java
List<void> list;
```

**编译输出：**
```text
JavaVoidGenericInvalid.java:3: error: illegal start of type
    List<void> list;
         ^
```

### 4. undefined 字面量 ❌

**文件：** `JavaUndefinedInvalid.java`

```java
Object u = undefined;
```

**编译输出：**
```text
JavaUndefinedInvalid.java:3: error: cannot find symbol
        Object u = undefined;
                   ^
```

---

## Swift 实测结果 ✅

**文件：** `SwiftVoidPlayground.swift`

```swift
func f1() -> Void {
    return ()
}

func f2() {
}

let v: Void = ()
let u: () = v

struct Box<T> {
    let value: T
}

let b1 = Box<Void>(value: ())
let b2 = Box<()>(value: ())

let arr: [Void] = [(), ()]

print("Swift Void value:", v)
print("Swift Box<Void>:", b1.value)
print("Swift Void array count:", arr.count)
print("Swift Void verified")
```

**运行输出：**
```text
Swift Void value: ()
Swift Box<Void>: ()
Swift Void array count: 2
Swift Void verified
```

**结论：**
Swift `Void` 是 `()` 空元组的 typealias，可以作为：
- 变量类型
- 泛型实参
- 数组元素类型
- 函数返回类型

---

## 三语言对比结论

| 能力 | ArkTS | Java（实测） | Swift（实测） |
|------|-------|-------------|--------------|
| void 作为返回类型 | ✅ | ✅ | ✅ |
| void 变量 | ✅ `let v: void = undefined` | ❌ | ✅ `let v: Void = ()` |
| void 泛型实参 | ✅ `A<void>` | ❌ | ✅ `Box<Void>` |
| void 数组 | ✅ `void[]` | ❌ | ✅ `[Void]` |
| 唯一值 | `undefined` | 无值 | `()` |
| undefined 字面量 | ✅ | ❌ | ❌ |

---

## 核心结论

1. **ArkTS 与 Swift 都把 void 当作可用的普通类型**，Java 只允许 void 作返回类型。
2. **ArkTS 的 void 值是 `undefined`**，Swift 的 Void 值是 `()` 空元组。
3. **ArkTS 在 nullish 语义上更强**：`void ≡ undefined`，并可与 `undefined` 互赋。
4. **Java 表达力最弱**：void 不可变量化、不可泛型、不可数组化。
