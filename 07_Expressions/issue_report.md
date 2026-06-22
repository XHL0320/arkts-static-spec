# 07 Expressions Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-7.32-01 | EXP_07_32_02_004_PASS_COMPOUND_LOGIC | `&&=` / `||=` 复合赋值不支持 | compile-pass | es2panda 报 Unexpected token | C类-编译器未实现 |
| D-7.36-01 | EXP_07_36_005, EXP_07_36_006 | 常量表达式中 `++` / `--` 应被拒绝 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-7.36-02 | EXP_07_36_007 | 常量表达式引用 `let` 应被拒绝 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-7.33-01 | EXP_07_33_004 | 三元条件表达式接受非 boolean 条件 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-7.27-01 | EXP_07_27_06_004 | 枚举类型与 int 关系比较应被拒绝 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-7.35-01 | EXP_07_35_04_002 | Lambda 捕获未初始化变量应被拒绝 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-7.26-01 | EXP_07_26_014 | nullish 类型参与移位运算应被拒绝 | compile-time error | 编译通过 | D类-Spec不一致 |

### 异常详情

**C-7.32-01** ⭐⭐ MEDIUM — `&&=` / `||=` 复合赋值 es2panda 暂不支持

- Spec §7.32.2 的 assignmentOperator 语法列出 `&&=` 和 `||=`。
- 实际：`a &&= true` 报 `Unexpected token '&&='`。
- 当前用例已通过改写为 `a = a && true` 规避，但原语法能力仍未实现。
- 分类：C 类（编译器未实现 Spec 要求）

**D-7.36-01** ⭐ LOW — 常量表达式允许 `++` / `--`

- Spec §7.36 禁止 `++` / `--` 出现在常量表达式中。
- 实际：`const BAD: int = count++`、`const BAD: int = --count` 编译通过。
- Java 对此更宽松，Swift 禁止；ArkTS 应以自身 Spec 为准。
- 分类：D 类（Spec 与实现不一致）

**D-7.36-02** ⭐ LOW — 常量表达式可引用 `let` 变量

- Spec §7.36 要求常量表达式只能引用常量相关构造。
- 实际：常量表达式引用 `let` 变量编译通过。
- 建议：编译器补充检查，或 Spec 明确允许只读/可确定值的 `let` 场景。
- 分类：D 类（Spec 与实现不一致）

**D-7.33-01** ⭐ LOW — 三元条件接受非 boolean

- Spec §7.33 要求 conditional expression 的 condition 为 boolean。
- 实际：`int` 条件被接受。
- Java/Swift 均要求 boolean/Bool。
- 分类：D 类（Spec 与实现不一致）

**D-7.27-01** ⭐ LOW — 枚举类型与 int 关系比较未拒绝

- Spec 对枚举关系比较要求同枚举类型比较。
- 实际：enum 与 int 可直接进行关系比较。
- Java/Swift 均禁止 enum 与 int 直接比较。
- 分类：D 类（Spec 与实现不一致）

**D-7.35-01** ⭐ LOW — Lambda 捕获未初始化变量未检查

- Spec §7.35.2 要求使用未初始化变量应产生编译错误。
- 实际：lambda 捕获未初始化变量编译通过。
- TypeScript 行为更宽松，但 ArkTS 静态语义应按 Spec 检查。
- 分类：D 类（Spec 与实现不一致）

**D-7.26-01** ⭐ LOW — nullish 类型参与移位运算未拒绝

- Spec §7.26 要求 shift operands 为 numeric/integral/bigint 相关类型。
- 实际：`int | null` 等 nullish union 可参与移位运算。
- 建议：补充 nullish union 操作数检查。
- 分类：D 类（Spec 与实现不一致）
