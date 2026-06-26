# 03 Types - Spec Extract

Source: ArkTS static language specification, chapter 03 Types (types.md).

## 类型体系

ArkTS 类型系统分为**值类型**和**引用类型**：

### 值类型（Value Types）
- **整数类型**：`byte`（8位）、`short`（16位）、`int`（32位）、`long`（64位）
- **浮点类型**：`float`（32位 IEEE 754）、`double`（64位 IEEE 754）
- **`boolean`**：`true` / `false`
- **`char`**：16位 Unicode 编码单元（实验特性，见 §17）

### 引用类型（Reference Types）
- **`string`**：不可变字符串
- **`bigint`**：任意精度整数
- **`Object`**：所有引用类型的超类型
- **`Array<T>`** / **`readonly T[]`** / **`FixedArray<T>`** / **`ValueArray<T>`**
- **`Tuple`**：定长异构数组
- **函数类型**：`(p: T) => R`
- **联合类型**：`T | U`
- **`null`** / **`undefined`** / **`void`** / **`never`**

### 特殊类型
- **`Any`**：所有类型的超类型，无方法无字段
- **`never`**：无值类型，底部类型
- **字面量类型**：`42`（int字面量类型）、`"hello"`（string字面量类型）
- **Utility 类型**：`Awaited<T>`、`NonNullable<T>`、`Partial<T>`、`Required<T>`、`Readonly<T>`、`Record<K,V>`、`ReturnType<T>`

## 关键约束

- `Any` 类型无方法无字段，访问字段/方法 → compile-time error
- 值类型有默认值（int=0, float=0.0, boolean=false）
- 引用类型默认值为 `undefined`（nullish）
- 联合类型归一化：去除重复、吸收子类型、readonly 版本优先
- Utility 类型仅适用于 class/interface 类型参数
- `never` 是所有类型的子类型
- `keyof T` 仅适用于 class/interface 类型
