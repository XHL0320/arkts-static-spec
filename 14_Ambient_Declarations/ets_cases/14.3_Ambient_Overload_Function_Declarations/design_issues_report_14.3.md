# 14.3 Ambient Overload Function Declarations — 跨语言行为差异及规范一致性报告

## 总览

ArkTS 14.3 Ambient Overload Function Declarations 的核心规则（自 semantics.md）：
1. `declare overload` 引用已声明的 declare function 实体
2. 重载集按列表顺序解析，第一个匹配的实体被选中
3. ❌ 重载引用不存在的函数 → compile-time error
4. ❌ 重载等价签名（overload-equivalent）→ compile-time error
5. ❌ 空重载集 → 应报错
6. ❌ 引用非 ambient 函数 → 应报错

## 已知差异

### D-14.3-01: 重载等价签名检查缺失

**描述**：ArkTS 编译器当前允许 `declare overload` 中包含两个参数类型完全相同的函数，但 spec 要求 compile-time error。

**复现用例**：
- AMB_14_03_008_FAIL_OVERLOAD_DUPLICATE_SIG.ets（`declare function fa(x: int): void` + `declare function fb(x: int): void`）

**跨语言对比**：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `fa(x: int): void` + `fb(x: int): void` | ❌ compile-time error |
| ArkTS (实际) | 同上 | ✅ 编译通过（与 spec 矛盾） |
| Java | `void fa(int x) {} void fb(int x) {}` | ❌ compile-time error |
| Swift | `func fa(x: Int) {} func fb(x: Int) {}` | ❌ compile-time error |

**严重性**：MEDIUM
**分类**：D 类（Spec 与实现不一致）

### D-14.3-02: 空重载集检查缺失

**描述**：ArkTS 编译器当前允许空 `declare overload {}`，但 spec 要求 compile-time error。

**复现用例**：
- AMB_14_03_009_FAIL_OVERLOAD_EMPTY_SET.ets（`declare overload foo {}`）

**严重性**：LOW
**分类**：D 类（Spec 与实现不一致）

### D-14.3-03: 非 declare 函数引用检查缺失

**描述**：ArkTS 编译器当前允许 `declare overload` 引用非 declare 的普通函数，但 spec 要求 compile-time error。

**复现用例**：
- AMB_14_03_011_FAIL_OVERLOAD_REF_NON_AMBIENT.ets（overload 引用普通函数）

**跨语言对比**：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | declare overload foo {realFunc, ambientFunc} | ❌ compile-time error |
| ArkTS (实际) | 同上 | ✅ 编译通过（与 spec 矛盾） |

**严重性**：MEDIUM
**分类**：D 类（Spec 与实现不一致）

## 总结

| ID | 问题 | 严重性 | 分类 |
|----|------|--------|------|
| D-14.3-01 | 重载等价签名检查缺失 | MEDIUM | D 类 |
| D-14.3-02 | 空重载集检查缺失 | LOW | D 类 |
| D-14.3-03 | 非 declare 函数引用检查缺失 | MEDIUM | D 类 |
