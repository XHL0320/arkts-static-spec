# 3.11 Type void or undefined - ArkTS vs Java vs Swift

**ArkTS：** ✅ 实测（es2panda + ark）
**Java：** ✅ 实测（OpenJDK 1.8）
**Swift：** ✅ 实测（Swift 5.10 on WSL）

---

## 一、类型对比

| 维度 | ArkTS | Java（实测） | Swift（实测） |
|------|-------|-------------|--------------|
| void 类型 | ✅ 与 undefined 同一类型 | ✅ 仅返回类型 | ✅ Void = () |
| undefined 值 | ✅ 唯一值 | ❌ 无 | ❌ 无 |
| void 变量 | ✅ | ❌ 编译错误 | ✅ `let x: Void = ()` |
| void 泛型实参 | ✅ | ❌ 编译错误 | ✅ |
| void[] | ✅ | ❌ | ✅ `[Void]` |
| 唯一值 | `undefined` | 无值 | `()` |

---

## 二、Java 实测结论

### 2.1 void 作为返回类型 ✅
```java
static void f1() { return; }
static void f2() { }
```

输出：
```text
Java void return only verified
```

### 2.2 void 作为变量 ❌
```java
void v;
```

错误：
```text
error: illegal start of expression
```

### 2.3 void 作为泛型实参 ❌
```java
List<void> list;
```

错误：
```text
error: illegal start of type
```

### 2.4 undefined 字面量 ❌
```java
Object u = undefined;
```

错误：
```text
error: cannot find symbol
```

---

## 三、Swift 实测结论

### 3.1 Void 作为普通类型 ✅

```swift
let v: Void = ()
let u: () = v
```

### 3.2 Void 作为泛型实参 ✅

```swift
struct Box<T> {
    let value: T
}

let b1 = Box<Void>(value: ())
let b2 = Box<()>(value: ())
```

### 3.3 Void 数组 ✅

```swift
let arr: [Void] = [(), ()]
```

### 3.4 Swift 实测输出

```text
Swift Void value: ()
Swift Box<Void>: ()
Swift Void array count: 2
Swift Void verified
```

---

## 四、ArkTS 对应行为（已实测）

```typescript
function f1(): void {
  return undefined
}

function f2(): undefined {
  return
}

let v: void = undefined
let u: undefined = undefined
v = u
u = v

class A<T> {
  f: T
  constructor(f: T) { this.f = f }
}

let a1 = new A<void>(undefined)
let a2 = new A<undefined>(undefined)
let arr: void[] = [undefined]
```

---

## 五、核心差异

| 能力 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 作为返回类型 | ✅ | ✅ | ✅ |
| 作为变量类型 | ✅ | ❌ | ✅ |
| 作为泛型实参 | ✅ | ❌ | ✅ |
| 作为数组元素 | ✅ | ❌ | ✅ |
| 唯一值 | `undefined` | 无值 | `()` |
| 与 nullish 系统整合 | ✅ | ❌ | ⚠️ Optional 单独处理 |

---

## 六、综合评分

| 维度 | ArkTS | Java | Swift |
|------|-------|------|-------|
| void 表达力 | ⭐⭐⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐⭐ |
| 泛型支持 | ⭐⭐⭐⭐⭐ | ❌ | ⭐⭐⭐⭐⭐ |
| 数组支持 | ⭐⭐⭐⭐⭐ | ❌ | ⭐⭐⭐⭐ |
| 与 nullish 集成 | ⭐⭐⭐⭐⭐ | ❌ | ⭐⭐⭐（Optional）|
| 语义直观性 | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

---

## 七、结论

1. **ArkTS void/undefined 设计明显强于 Java**：Java void 仅能做返回类型。
2. **ArkTS 与 Swift 更接近**：二者都允许 void 作为变量、泛型实参、数组元素。
3. **核心区别在唯一值：**
   - ArkTS: `undefined`
   - Swift: `()`
4. **ArkTS 的优势是 nullish 集成**：`void ≡ undefined`，能自然参与 `undefined` 相关类型系统。
5. **Swift 的优势是语义纯粹**：Void 就是空元组 `()`，与函数返回无值的模型一致。

---

## 八、归档

| 文件 | 用途 |
|------|------|
| `cross_lang_verify/3.11_void_undefined/JavaVoidValid.java` | Java 正向实测 |
| `cross_lang_verify/3.11_void_undefined/JavaVoidInvalid.java` | Java void 变量反向 |
| `cross_lang_verify/3.11_void_undefined/JavaVoidGenericInvalid.java` | Java void 泛型反向 |
| `cross_lang_verify/3.11_void_undefined/JavaUndefinedInvalid.java` | Java undefined 反向 |
| `cross_lang_verify/3.11_void_undefined/SwiftVoidPlayground.swift` | Swift 实测源码 |
| `cross_lang_verify/3.11_void_undefined/verification_report.md` | 三语言验证报告 |
