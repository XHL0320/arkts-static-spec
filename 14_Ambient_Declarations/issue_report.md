# 14 Ambient Declarations Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID          | Case                 | Symptom                            | Expected           | Actual         | Status     |
| ----------- | -------------------- | ---------------------------------- | ------------------ | -------------- | ---------- |
| D-14.3-01   | AMB_14_03_008        | Overload 重载等价签名检查缺失                | compile-time error | 编译通过           | D类-Spec不一致 |
| D-14.3-02   | AMB_14_03_009        | Overload 空重载集检查缺失                  | compile-time error | 编译通过           | D类-Spec不一致 |
| D-14.3-03   | AMB_14_03_011        | Overload 引用非 declare 函数检查缺失        | compile-time error | 编译通过           | D类-Spec不一致 |
| D-14.6-01   | AMB_14_06_006~007    | Ambient enum 成员初始化器检查缺失            | compile-time error | 编译通过           | D类-Spec不一致 |
| D-14.7.1-01 | AMB_14_07_01_001~007 | declare namespace 与 namespace 无法合并 | compile-time error | 编译通过（merge 拒绝） | D类-Spec不一致 |

### 异常详情

**D-14.3-01** MEDIUM — Overload 重载等价签名检查缺失

- **问题描述：** ArkTS spec 要求 `declare overload` 中两个函数的参数类型完全相同（overload-equivalent）时产生 compile-time error，但当前编译器允许
- **复现用例 ID：** AMB_14_03_008_FAIL_OVERLOAD_DUPLICATE_SIG
- **跨语言对比：** Java 和 Swift 均对重载等价签名报错
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

**D-14.3-02** LOW — Overload 空重载集检查缺失

- **问题描述：** `declare overload foo {}` 空集当前编译通过，spec 要求 compile-time error
- **复现用例 ID：** AMB_14_03_009_FAIL_OVERLOAD_EMPTY_SET
- **严重性：** LOW
- **分类：** D 类（Spec 与实现不一致）

**D-14.3-03** MEDIUM — Overload 引用非 declare 函数检查缺失

- **问题描述：** `declare overload` 引用普通函数（非 declare）当前编译通过，spec 要求 compile-time error
- **复现用例 ID：** AMB_14_03_011_FAIL_OVERLOAD_REF_NON_AMBIENT
- **跨语言对比：** N/A（Java/Swift 无 declare 概念）
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

**D-14.6-01** MEDIUM — Ambient enum 成员初始化器检查缺失

- **问题描述：** ArkTS spec 要求 ambient enum 成员不能有初始化器（否则 compile-time error），但当前编译器允许带初始化器的 enum 成员编译通过
- **复现用例 ID：** AMB_14_06_006_FAIL_MEMBER_INITIALIZER, AMB_14_06_007_FAIL_MIXED_INITIALIZER
- **跨语言对比：** Java/Swift 均允许枚举成员带初始化器/原始值
- **影响：** 2 个 compile-fail 用例无法通过
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

**D-14.7.1-01** MEDIUM — declare namespace 与 namespace 无法合并

- **问题描述：** ArkTS spec 允许用同名非 declare namespace 实现 ambient namespace，但编译器报 "Unable to merge namespaces, because their modifiers are different"
- **复现用例 ID：** AMB_14_07_01_001_FAIL_IMPLEMENT_SAME_NAME 至 AMB_14_07_01_007_FAIL_RUNTIME_IMPLEMENTED_NS
- **跨语言对比：** Java 静态内部类和 Swift 嵌套 enum 均支持类似模式
- **影响：** 5 个用例无法按 spec 预期通过（4 compile-pass 应为通过但被编译器拒绝，1 runtime 同样被拒）
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

## 整改建议

### 1. Overload 声明校验（D-14.3-01/02/03）

编译器应增加对 `declare overload` 的校验：
- **重载等价签名**：两个函数的参数类型完全相同 → compile-time error
- **空重载集**：`declare overload foo {}` → compile-time error
- **target 必须是 declare function**：overload 列表中的函数必须是 `declare function`，不能引用普通函数

> Java 和 Swift 均对重载等价签名报错，建议对齐。

### 2. Enum 成员初始化器校验（D-14.6-01）

编译器应增加对 ambient enum 成员的校验：
- **禁止初始化器**：`declare enum E { A = 5 }` → compile-time error
- 纯标识符列表（`{Red, Green, Blue}`）已正确编译通过

> 与 D-14.1-01 同属"ambient 无初始化器"规则体系，建议一并修复。

> 注：D-14.1-01/02（顶层 ambient 初始化器检查和类型注解检查）已于编译器更新后修复，当前版本已正确校验。

### 3. Namespace 合并支持（D-14.7.1-01）

编译器应支持 `declare namespace` 与非 `declare namespace` 的合并：
- 当前报 `"Unable to merge namespaces, because their modifiers are different"` 错误
- spec 明确允许用同名 namespace 实现 ambient namespace
- `export {foo}` 引用不存在成员的校验已正确实施，仅 merge 功能有缺陷
