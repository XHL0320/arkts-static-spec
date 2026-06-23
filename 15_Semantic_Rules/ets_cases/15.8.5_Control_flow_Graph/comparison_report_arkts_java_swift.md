# 15.8.5 Control Flow Graph（控制流图）- ArkTS/Java/Swift/TypeScript 跨语言对比报告

## 一、对比矩阵

| 方面 | ArkTS | Java | Swift | TypeScript |
|------|-------|------|-------|------------|
| 控制流图类型分析 | ✅ 支持 | ❌ 不支持 | ✅ 支持（可选绑定） | ✅ 支持 |
| instanceof 收窄 | ✅ 支持 | ✅ 支持（显式转换） | ✅ 支持（可选绑定） | ✅ 支持 |
| 类型不匹配拒绝 | ✅ 支持 | ✅ 支持 | ✅ 支持 | ✅ 支持 |

## 二、测试用例对照

| 测试用例 ID | ArkTS | Java | Swift | TypeScript |
|------------|-------|------|-------|------------|
| SEM_15_08_05_001 | ✅ 通过 | ✅ 通过（显式转换） | ✅ 通过（可选绑定） | ✅ 通过 |
| SEM_15_08_05_100 | ✅ 通过 | ✅ 通过 | ✅ 通过 | ✅ 通过 |
| SEM_15_08_05_200 | ✅ 通过 | ✅ 通过 | ✅ 通过 | ✅ 通过 |

## 三、详细代码对照

### 3.1 控制流图中的类型收窄

**ArkTS**:
```typescript
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }

function main(): void {
    let a: Animal = new Dog();
    if (a instanceof Dog) {
        // 在 if 分支中，a 收窄为 Dog
        console.log("dog");
    }
}
```

**Java**:
```java
// Java 不支持基于控制流图的智能类型分析
// 需要显式类型转换
class Animal {}
class Dog extends Animal {}

public class CFG {
    public static void main(String[] args) {
        Animal a = new Dog();
        if (a instanceof Dog) {
            Dog d = (Dog) a;  // 需要显式转换
            System.out.println("dog");
        }
    }
}
```

**Swift**:
```swift
class Animal {}
class Dog: Animal {}

func main() {
    let a: Animal = Dog()
    if let d = a as? Dog {  // 可选绑定
        print("dog")
    }
}
```

**TypeScript**:
```typescript
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }

function main(): void {
    let a: Animal = new Dog();
    if (a instanceof Dog) {
        // 在 if 分支中，a 收窄为 Dog
        console.log("dog");
    }
}
```

### 3.2 类型不匹配拒绝

**ArkTS**:
```typescript
// 编译报错：类型不匹配
let x: int = "s";  // 错误：string 不能赋值给 int
```

**Java**:
```java
// 编译报错：类型不匹配
int x = "s";  // 错误：String 不能赋值给 int
```

**Swift**:
```swift
// 编译报错：类型不匹配
let x: Int = "s"  // 错误：String 不能赋值给 Int
```

**TypeScript**:
```typescript
// 编译报错：类型不匹配
let x: number = "s";  // 错误：string 不能赋值给 number
```

## 四、关键发现

1. **ArkTS 与 TypeScript 类似**: 都支持基于控制流图的智能类型分析，行为一致
2. **ArkTS 与 Java 差异**: Java 不支持基于控制流图的智能类型分析，需要显式类型转换
3. **ArkTS 与 Swift 类似**: 都支持基于控制流图的智能类型分析，但语法不同

## 五、实测结果

| 语言 | 控制流图类型分析 | instanceof 收窄 | 类型不匹配拒绝 | 备注 |
|------|-----------------|----------------|---------------|------|
| ArkTS | ✅ 支持 | ✅ 支持（自动） | ✅ 支持 | - |
| Java | ❌ 不支持 | ✅ 支持（显式转换） | ✅ 支持 | 需要显式类型转换 |
| Swift | ✅ 支持 | ✅ 支持（可选绑定） | ✅ 支持 | 使用可选绑定 |
| TypeScript | ✅ 支持 | ✅ 支持（自动） | ✅ 支持 | 与 ArkTS 一致 |
