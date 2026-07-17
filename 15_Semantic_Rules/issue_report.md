# 15 Semantic Rules Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|:---|------|--------|---------|--------|--------|
| SC-01~14 | SEM_15_08_00_004/005/008/014/016/017/018/019/020/022/024/025/027/028 | Smart Cast 流敏感收窄未实现 | compile-pass | 编译失败 | C类-编译器未实现 |
| VAR-01~06 | SEM_15_02_00_010/012/015/018, SEM_15_05_00_001/003 | Subtyping/Variance 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| OVR-01~03 | SEM_15_09_00_003/009/013 | Override 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| TINF-01~02 | SEM_15_07_00_001/003 | Type Inference 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| CALL-01~02 | SEM_15_06_00_002/004 | Call Arguments 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| ASG-01 | SEM_15_04_00_004 | Assignability 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| ERAS-01 | SEM_15_12_00_004 | Type Erasure 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| INT-01 | SEM_15_02_08_001 | Intersection PLACEHOLDER 编译失败 | compile-pass | 编译失败 | C类-编译器未实现 |
| OW-01 | SEM_15_11_07_001 | Overload warning W2323 未实现 | compile-pass | 编译失败 | C类-编译器未实现 |
| C-15.11-02~07 | SEM_15_11_00_218/220/222/224/226/231 | Overload Resolution 运行时按实际类型派发 | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| GAP-SC | SEM_15_08_00_109/110/111/114/116/118 | Smart Cast 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| GAP-SUB | SEM_15_02_04_101, SEM_15_02_05_101/103/106, SEM_15_02_07_101 | Subtyping 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| GAP-OVR | SEM_15_09_01_103, SEM_15_09_02_102, SEM_15_09_00_108/109 | Override 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| GAP-INF | SEM_15_07_02_102 | Smart return 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| GAP-OL | SEM_15_11_00_113 | Overload 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| COM-15.14-01~07 | SEM_15_14_00_003/013/015/024/026/027/204 | Extended Conditional 未实现（Spec 即将废弃） | compile-pass/runtime | 编译失败 | D类-即将废弃 |
| **SEM-TYPE-01~08** | §15.12 | **Utility type 擦除映射规则(Awaited/NonNullable/Partial/Required/Readonly/Record/ReturnType/never签名) | compile-pass | 占位符(无实质验证) | C类-编译器未实现 |
| **SEM-THIS-01** | §15.9.3 | **`this` 返回类型覆盖兼容性规则** | compile-pass | 无测试 | C类-编译器未实现 |

### 异常详情

**SC-01~14** MEDIUM — Smart Cast 流敏感收窄未实现（14 场景）

- Spec 15.8: `The compiler uses data-flow analysis based on Control-flow Graph to compute smart types`
- Spec 要求的所有 14 场景均被编译器拒绝，每个场景均有明确 Spec 依据：

| # | 场景 | Spec 依据 | 编译器 |
|---|------|----------|:------:|
| 1 | typeof 收窄 | §15.8:1369 `typeof v === "string"` 等式收窄 | ❌ |
| 2 | 控制流收窄 | §15.8:1357 CFG data-flow analysis 计算智能类型 | ❌ |
| 3 | 联合类型收窄 | §15.8 联合类型应能通过 typeof/instanceof 收窄 | ❌ |
| 4 | 嵌套 if 收窄 | §15.8.4 CFG 分支合并 | ❌ |
| 5 | 三元收窄 | §15.8:1365 条件表达式包括 ternary | ❌ |
| 6 | 逻辑 AND/OR 收窄 | §15.8:1365 Conditional-And / Conditional-Or | ❌ |
| 7 | CFG 分支合并 | §15.8.4 分支合并时智能类型为各分支联合 | ❌ |
| 8 | 循环 backedge | §15.8.4 反向边: 循环变量重置为声明类型 | ❌ |
| 9 | Must-alias 集 | §15.8.4 must-alias 集计算用于智能类型 | ❌ |
| 10 | 差集类型计算 | §15.8.3 else 分支使用差集类型 | ❌ |
| 11 | 类型表达式简化 | §15.8.6 类型表达式简化规则 | ❌ |
| 12 | switch 收窄 | §15.8:1365 条件语句包括 switch | ❌ |
| 13 | for 循环收窄 | §15.8:1365 循环中应保持智能类型 | ❌ |
| 14 | while 循环收窄 | §15.8:1365 同上 | ❌ |

- 编译器错误示例：
  ```
  SEM_15_08_00_004: Property 'length' does not exist on type 'Object'
  → typeof value === "string" 后 value.length 未收窄
  SEM_15_08_00_005: Unions are not allowed in binary expressions
  → typeof value === "string" 后 value*2 仍为联合类型
  ```
- 跨语言对比：

| 场景 | ArkTS 编译器 | TypeScript | Java | Swift |
|------|:----------:|:----------:|:----:|:-----:|
| typeof 收窄 | ❌ | ✅ | N/A | N/A |
| instanceof 收窄 | ✅ | ✅ | ✅ | ✅ |
| null/undefined 收窄 | ✅ | ✅ | ❌ | ✅ |
| CFG 分支合并 | ❌ | ✅ | ✅ | ✅ |

- 14 个场景全部为 **Spec §15.8 明确要求的核心功能**，编译器未实现严重影响开发者体验
- 分类：C 类（编译器未实现），涉及章节：15.8

---

**VAR-01~06** LOW — Subtyping/Variance 编译器误拒（6 场景）

- Spec 15.2/15.5 要求：协变/逆变兼容的子类型关系应通过编译
- 实际：编译器拒绝合法 pattern，如 variance covariant、string literal to string、union member to union、func parameter contravariance
- 涉及用例：
  ```
  SEM_15_02_00_010/012/015/018, SEM_15_05_00_001/003
  ```
- 分类：C 类（编译器未实现），涉及章节：15.2/15.5

---

**OVR-01~03** LOW — Override 编译器误拒（3 场景）

- Spec 15.9 要求：override-compatible signature 应通过编译
- 实际：编译器拒绝 class method parameter contravariance、interface default method override、interface override compatible
- 涉及用例：
  ```
  SEM_15_09_00_003/009/013
  ```
- 分类：C 类（编译器未实现），涉及章节：15.9

---

**TINF-01~02** LOW — Type Inference 编译器误拒（2 场景）

- 涉及用例：`SEM_15_07_00_001_PASS_CONSTANT_expression`, `SEM_15_07_00_003_PASS_RETURN_type_inference`
- 分类：C 类（编译器未实现），涉及章节：15.7

---

**CALL-01~02** LOW — Call Arguments 编译器误拒（2 场景）

- 涉及用例：`SEM_15_06_00_002_PASS_SPREAD_expression`, `SEM_15_06_00_004_PASS_REST_parameter`
- 分类：C 类（编译器未实现），涉及章节：15.6

---

**ASG-01 / ERAS-01 / INT-01 / OW-01** LOW — 单场景编译器误拒

| ID | 用例 | 问题 |
|----|------|------|
| ASG-01 | SEM_15_04_00_004 | 隐式转换可赋值性编译器误拒 |
| ERAS-01 | SEM_15_12_00_004 | effective type mapping 编译器误拒 |
| INT-01 | SEM_15_02_08_001 | Intersection PLACEHOLDER 编译失败 |
| OW-01 | SEM_15_11_07_001 | Overload warning W2323 未实现（编译器应产生警告） |

- 分类：C 类（编译器未实现），涉及章节：15.4/15.12/15.2.8/15.11

---

**C-15.11-02~07** MEDIUM — Overload Resolution 运行时按实际类型派发

- Spec 15.11 要求：`let b: Base = new Derived(); b.pick(9)` 应按声明类型 `Base` 选择 `pickNumber`
- 实际：运行时按实际类型 `Derived` 选择 `pickInt`
- `assertEQ` 错误：`'derived-int' === 'base-number'`
- 涉及用例：
  ```
  SEM_15_11_00_218_RUNTIME_receiver_declared_base_function_scope
  SEM_15_11_00_220_RUNTIME_receiver_declared_base_direct_new_function
  SEM_15_11_00_222_RUNTIME_receiver_declared_base_from_return_function
  SEM_15_11_00_224_RUNTIME_receiver_declared_base_local_copy_global
  SEM_15_11_00_226_RUNTIME_receiver_declared_base_after_side_effect_call
  SEM_15_11_00_231_RUNTIME_SMART_FUNC_overload_declared_base_function
  ```
- 分类：C 类（运行时偏差），涉及章节：15.11

---

**GAP-SC** LOW — Smart Cast 边界编译器未拒绝（6 场景）

- Spec 要求：instanceof 无效访问、全局/函数作用域收窄边界应产生 compile-time error
- 实际：编译器未拒绝，通过编译
- 涉及用例：
  ```
  SEM_15_08_00_109/110/111/114/116/118
  ```
- 分类：C 类（编译器为未实现），涉及章节：15.8

---

**GAP-SUB** LOW — Subtyping 边界编译器未拒绝（5 场景）

- Spec 要求：tuple/union/fixed-array 错误子类型方向应产生 compile-time error
- 实际：编译器未拒绝，通过编译
- 涉及用例：
  ```
  SEM_15_02_04_101, SEM_15_02_05_101/103/106, SEM_15_02_07_101
  ```
- 分类：C 类（编译器未实现），涉及章节：15.2

---

**GAP-OVR** LOW — Override 边界编译器未拒绝（4 场景）

- Spec 要求：override 参数协变/返回逆变/有效签名冲突应产生 compile-time error
- 实际：编译器未拒绝，通过编译
- 涉及用例：
  ```
  SEM_15_09_01_103, SEM_15_09_02_102, SEM_15_09_00_108/109
  ```
- 分类：C 类（编译器未实现），涉及章节：15.9

---

**GAP-INF / GAP-OL** LOW — 单场景编译器未拒绝

| ID | 用例 | 问题 |
|----|------|------|
| GAP-INF | SEM_15_07_02_102 | unexpressible smart return 编译器未拒绝 |
| GAP-OL | SEM_15_11_00_113 | 静态方法不继承用于重载，编译器未拒绝 |

- 分类：C 类（编译器未实现），涉及章节：15.7.2/15.11

---

**COM-15.14-01~07** LOW — Extended Conditional Expressions（Spec 即将废弃）

- 编译器拒绝 truthiness 扩展语义（`&&`/`||` 返回操作数、非 boolean 三元条件、typeof/instanceof 真值检查、NaN 真值判断等）
- Spec 15.14: `Using these features is not recommended in most cases`
- Spec 15.14.1: `The extended semantics is to be deprecated in one of the future versions`
- 编译器未实现是**预期行为**。用例保留作兼容性参考，不计入缺陷
- 涉及用例：
  ```
  SEM_15_14_00_003/013/015/024/026/027/204
  ```
- 分类：D 类（即将废弃），涉及章节：15.14

### 历史已解决异常

| 问题 | 修复/处理 | 日期 |
|------|---------|------|
| FixedArray 不变性（D-15.2.7-01） | 确认 FixedArray 设计为协变，用例改 PASS | 2026-06-22 |
| int/number 子类型（D-15.2.3-01） | 确认 int→number 隐式拓宽符合 Spec，用例改 PASS | 2026-06-22 |
| union 子类型（旧 SEM-GAP-02） | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| FixedArray<Object>→<string> | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| Promise 类型擦除 | 编译器正确拒绝 ESE461884 | 2026-06-22 |
