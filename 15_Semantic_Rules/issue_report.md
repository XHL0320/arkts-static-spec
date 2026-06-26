# 15 Semantic Rules Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|:---|------|--------|---------|--------|--------|
| SEM-U-01 | SEM_15_08_01_100_FAIL_TYPEOF_GAP | typeof smart cast 未实现 | compile-time error | compile-error ✅ | C类-未实现 |
| SEM-SC-01~14 | 15.8 十四场景 | Smart Cast 流敏感收窄未实现 | compile-pass | 编译失败 | C类-未实现 |
| SEM-VAR-01~06 | 15.2/15.5 | 子类型/变体注解编译器拒绝 | compile-pass | 编译失败 | C类-未实现 |
| SEM-OVR-01~03 | 15.9 | Override 参数逆变/默认方法覆写 | compile-pass | 编译失败 | C类-未实现 |
| SEM-TINF-01~02 | 15.7 | 常量表达式/返回类型推断 | compile-pass | 编译失败 | C类-未实现 |
| SEM-CALL-01~02 | 15.6 | spread/rest 参数兼容性 | compile-pass | 编译失败 | C类-未实现 |
| SEM-ASG-01 | 15.4 | 隐式转换可赋值性 | compile-pass | 编译失败 | C类-未实现 |
| SEM-ERAS-01 | 15.12 | effective type mapping | compile-pass | 编译失败 | C类-未实现 |
| SEM-INT-01 | 15.2.8 | Intersection PLACEHOLDER | compile-pass | 编译失败 | C类-未实现 |
| SEM-OW-01 | SEM_15_11_07_001 | 重载警告 W2323 未实现 | compile-pass | 编译失败 | C类-未实现 |
| C-15.11-02~07 | SEM_15_11_00_218/220/222/224/226/231 | Overload 按实际类型而非声明类型派发 | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| SEM-GAP-SC | 15.8 六场景 | instanceof 无效访问/作用域收窄边界未拒绝 | compile-fail | 编译通过 | C类-未实现 |
| SEM-GAP-SUB | 15.2 五场景 | tuple/union/fixed-array 子类型方向未拒绝 | compile-fail | 编译通过 | C类-未实现 |
| SEM-GAP-OVR | 15.9 四场景 | Override 参数协变/返回逆变未拒绝 | compile-fail | 编译通过 | C类-未实现 |
| SEM-GAP-INF | 15.7.2 | unexpressible smart return 未拒绝 | compile-fail | 编译通过 | C类-未实现 |
| SEM-GAP-OL | 15.11 | 静态方法不继承用于重载未拒绝 | compile-fail | 编译通过 | C类-未实现 |
| COM-15.14-01~07 | 15.14 | Extended Conditional（即将废弃，Spec 不推荐使用） | compile-pass/runtime | 编译失败 | D类-即将废弃 |

### 异常详情

**SEM-U-01** MEDIUM — typeof smart cast 未实现

`typeof x === "boolean"` 收窄后编译器未将 x 从 `int|boolean` 收窄为 `boolean`。编译器明确拒绝此模式（ESE0318）。等待编译器支持 typeof 类型收窄后改 compile-pass。
- 跨语言对比：

| 语言 | typeof 等效 | Smart Cast |
|------|------------|-----------|
| ArkTS | `typeof x === "boolean"` | ❌ 未实现 |
| Java | `x instanceof String` | ✅ 编译期收窄 |
| Swift | `x is String` | ✅ 编译期收窄 |
| TypeScript | `typeof x === "boolean"` | ✅ 编译期收窄 |

- 分类：C 类（编译器功能缺失）
- 涉及章节：15.8.1

---

**SEM-SC-01~14** MEDIUM — Smart Cast 流敏感收窄未完全实现（14 场景）

Spec 明确要求编译器在以下条件下进行流敏感类型收窄（§15.8:1357-1371）：

> "The compiler uses data-flow analysis based on Control-flow Graph to compute smart types."
> "Conditional statements and conditional expressions that include:
>   – Equality Expressions of typeof v and a string literal;
>   – Equality Expressions of a variable with null/undefined;
>   – Extended Conditional Expressions."

当前编译器对 typeof 收窄、CFG 分支合并、联合类型收窄、嵌套 if 收窄、三元收窄、逻辑运算收窄、switch/for/while 循环中的收窄、backedge 收窄、must-alias、intersection/difference 类型计算、type-expr-simplify 等 14 个场景均未实现。

实测错误举例：
```typescript
function test(value: Object): void {
    if (typeof value === "string") {
        let len = value.length;
        // ^ ESE0087: Property 'length' does not exist on type 'Object'
        // 编译器未将 value 从 Object 收窄为 string
    }
}
```

跨语言对比：

| 场景 | ArkTS 编译器 | TypeScript | Java | Swift |
|------|:----------:|:----------:|:----:|:-----:|
| typeof 收窄 | ❌ 未实现 | ✅ `typeof x === "string"` | N/A | N/A |
| instanceof 收窄 | ✅ 已实现 | ✅ | ✅ | ✅ |
| null/undefined 收窄 | ✅ 已实现 | ✅ | ❌ | ✅ |
| CFG 分支合并 | ❌ 未实现 | ✅ | ✅ | ✅ |
| 三元/逻辑收窄 | ❌ 未实现 | ✅ | N/A | N/A |
| 循环中收窄 | ❌ 未实现 | ✅ | N/A | N/A |

- 分类：C 类（编译器功能缺失）
- 涉及章节：15.8

---

**SEM-VAR-01~06** LOW — 子类型/变体编译器拒绝（6 场景）

variance covariant/contravariant、string literal to string、union member to union、func parameter contravariance 等场景编译器拒绝。
- 分类：C 类（编译器功能缺失）
- 涉及章节：15.2/15.5

---

**SEM-OVR-01~03** LOW — Override 编译器拒绝（3 场景）

class method parameter contravariance、interface default method override、interface override compatible 编译器拒绝。
- 分类：C 类（编译器功能缺失）
- 涉及章节：15.9

---

**SEM-TINF-01~02** LOW — 类型推断编译器拒绝（2 场景）

constant expression、return type inference 编译器拒绝。
- 分类：C 类（编译器功能缺失）
- 涉及章节：15.7

---

**SEM-CALL-01~02** LOW — 调用参数编译器拒绝（2 场景）

spread expression、rest parameter 编译器拒绝。
- 分类：C 类（编译器功能缺失）
- 涉及章节：15.6

---

**SEM-ASG-01** LOW — 隐式转换可赋值性编译器拒绝
**SEM-ERAS-01** LOW — effective type mapping 编译器拒绝
**SEM-INT-01** LOW — Intersection PLACEHOLDER 编译失败
**SEM-OW-01** LOW — Overload warning W2323 未实现
- 分类：C 类（编译器功能缺失）

---

**COM-15.14-01~07** LOW — Extended Conditional Expressions（Spec §15.14 即将废弃）

编译器拒绝 truthiness 扩展语义（`&&`/`||` 返回操作数、非 boolean 三元条件、typeof/instanceof 真值检查、NaN 真值判断等）。Spec 明确声明：

> §15.14: "not recommended in most cases" / §15.14.1: "**to be deprecated in one of the future versions**"

编译器未实现此特性是**预期行为**。用例保留作兼容性参考，不计入缺陷。
- 分类：D 类（即将废弃）
- 涉及章节：15.14

---

**C-15.11-02~07** MEDIUM — Overload Resolution 运行时按实际类型派发

`let b: Base = new Derived(); b.pick(9)` — 运行时按实际类型 `Derived` 选择 `pickInt` 而非声明类型 `Base` 的 `pickNumber`。
- `assertEQ` 失败：`'derived-int' === 'base-number'`
- 涉及用例：218/220/222/224/226/231
- 分类：C 类（运行时偏差）
- 涉及章节：15.11

---

**SEM-GAP-SC** LOW — Smart Cast 边界编译器未拒绝（6 场景）

function_declared_base_init_derived_member/assign、function_declared_base_from_derived_var/after_call、SMART_FUNC_function_base_member_without_narrow、INSTANCEOF_invalid_access。编译器应拒绝 smart cast 访问派生类成员但未拒绝。
- 分类：C 类（编译器边界）
- 涉及章节：15.8

---

**SEM-GAP-SUB** LOW — 子类型边界编译器未拒绝（5 场景）

tuple_shorter_to_longer、two_union_subtype_gap、union_int_to_number、union_larger_to_smaller、fixed_array_wrong_direction。
- 分类：C 类（编译器边界）
- 涉及章节：15.2

---

**SEM-GAP-OVR** LOW — Override 边界编译器未拒绝（4 场景）

multiple_override_same、effective_signature_conflict、CLASS_parameter_covariance、CLASS_return_contravariance。
- 分类：C 类（编译器边界）
- 涉及章节：15.9

---

**SEM-GAP-INF** LOW — unexpressible smart return 编译器未拒绝
**SEM-GAP-OL** LOW — 静态方法不继承用于重载编译器未拒绝
- 分类：C 类（编译器边界）
- 涉及章节：15.7.2 / 15.11

### 历史已解决异常

| 问题 | 修复/处理 | 日期 |
|------|---------|------|
| FixedArray 不变性（D-15.2.7-01） | 确认 FixedArray 设计为协变，用例改 PASS | 2026-06-22 |
| int/number 子类型（D-15.2.3-01） | 确认 int→number 隐式拓宽符合 Spec，用例改 PASS | 2026-06-22 |
| union 子类型（旧 SEM-GAP-02） | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| FixedArray<Object>→<string> | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| Promise 类型擦除 | 编译器正确拒绝 ESE461884 | 2026-06-22 |
