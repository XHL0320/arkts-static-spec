# 09 Classes Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-9.08-01 | CLS_09_08_008_PASS_GETTER_SETTER_MODIFIER_MISMATCH | getter/setter 修饰符一致性未检查 | compile-time error | 编译通过 | C类-编译器未实现 |
| C-9.07-01 | CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT | override 方法默认参数值不一致未检查 | compile-time error | 编译通过 | C类-编译器未实现 |
| C-9.07-02 | CLS_09_07_046_PASS_NATIVE_STATIC | native + static 修饰符组合未检查 | compile-time error | 编译通过 | C类-编译器未实现 |
| D-9.02-01 | CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT | 显式 extends Object 行为与 spec/用例预期不一致 | compile-time error 或 spec 明确允许 | 编译通过 | D类-Spec不一致 |
| D-9.06-01 | CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER | 字段初始化器使用 this 无 warning | compile-time warning | 编译通过且无 warning | D类-Spec不一致 |
| D-9.06-02 | CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL | late init + optional 组合未检查 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-9.09-01 | CLS_09_09_009 / CLS_09_09_010 | 命名构造器实验特性未实现 | experimental feature 支持或明确不支持 | es2panda 不支持命名 this/super 构造器调用 | D类-实验特性差异 |

### 异常详情

**C-9.08-01** ⭐⭐ MEDIUM — getter/setter 修饰符一致性未检查

- Spec §9.8 要求同名 getter 和 setter 同时存在时，accessor modifiers 必须一致，否则 compile-time error。
- 实际：getter/setter 修饰符不一致仍编译通过。
- Swift 对属性访问器修饰符一致性要求更严格；Java 无直接 accessor 语法。
- 建议：es2panda 增加 getter/setter modifier consistency 检查。
- 分类：C 类（编译器未实现 Spec 检查）

**C-9.07-01** ⭐⭐ MEDIUM — override 方法默认参数值不一致未检查

- Spec §9.7.5 要求 overriding method 的默认参数值必须与 overridden method 保持一致。
- 实际：
  ```typescript
  class Base { foo(x: int = 10): void {} }
  class Derived extends Base { override foo(x: int = 20): void {} }
  ```
  编译通过。
- 建议：override 兼容性检查中加入默认参数值一致性。
- 分类：C 类（编译器未实现 Spec 检查）

**C-9.07-02** ⭐ MEDIUM — native + static 修饰符组合未检查

- Spec §9.7.1 约束 static method modifier 组合，当前记录为 static 不能与 native 组合。
- 实际：`native static foo()` 编译通过。
- 建议：补充 native/static 修饰符组合合法性检查，或明确该组合允许。
- 分类：C 类（编译器未实现 Spec 检查）

**D-9.02-01** ⭐ LOW — 显式 extends Object 行为与 spec/用例预期不一致

- 用例 `CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT` 期望显式 `extends Object` 失败。
- 实际：`class X extends Object {}` 编译通过。
- Java 允许显式 extends Object；Swift 无通用 Object 基类可直接对比。
- 建议：若设计允许，应将用例改为 PASS 并更新 spec/说明；若禁止，应补充编译器检查。
- 分类：D 类（Spec/用例预期与实现不一致）

**D-9.06-01** ⭐ LOW — 字段初始化器使用 this 无 warning

- Spec §9.6.4 规定字段 initializer expression 使用 `this` 或 `super` 时应产生 compile-time warning。
- 实际：`class T { f0 = this }` 编译通过且无 warning。
- Java 允许类似用法；Swift 禁止在属性初始化器中使用 `self`。
- 建议：es2panda 至少输出 warning，或 spec 明确该用法允许且无诊断。
- 分类：D 类（Spec 与实现不一致）

**D-9.06-02** ⭐⭐ MEDIUM — late init + optional 组合未检查

- Spec §9.6.5 要求 late initialization field 不能是 readonly 或 optional。
- 实际：`val!: string` 等组合编译通过。
- Swift 有隐式解包 optional 机制，Java 无 late init 等价语法。
- 建议：补充 late init 字段与 optional/readonly 的组合检查。
- 分类：D 类（Spec 与实现不一致）

**D-9.09-01** ⭐ LOW — 命名构造器实验特性未实现

- Spec 标注 constructor optional identifier 为 experimental feature。
- 实际：命名 `super.name()` / `this.name()` 构造器调用不被 es2panda 支持。
- Java/Swift 均无等价命名构造器语法；Dart 有类似 named constructor。
- 建议：明确该实验特性的支持状态；若暂不支持，应在用例/文档中标注实验特性差异。
- 分类：D 类（实验特性差异）
