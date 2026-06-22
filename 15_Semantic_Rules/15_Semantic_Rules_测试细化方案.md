# 15 Semantic Rules 测试细化方案

> 参考模板：`doc/03_Types/` 目录结构
> 章节范围：ArkTS Language Specification Chapter 15 — Semantic Rules

---

## 一、目录结构规划

> **参考模板**：`doc/03_Types/ets_cases/` 完全扁平化结构
> **设计原则**：所有章节与子章节目录平级放置在 `ets_cases/` 下，每个目录均包含四分类用例目录 + 四份配套文档

```
doc/15_Semantic_Rules/
├── ets_cases/
│   │
│   ├── 15.1_Semantic_Essentials/                    # 15.1 语义基础（主章节）
│   │   ├── compile-pass/
│   │   ├── compile-fail/
│   │   ├── runtime/
│   │   ├── cross_lang_verify/
│   │   ├── comparison_report_arkts_java_swift.md
│   │   ├── design_issues_report_15.1.md
│   │   ├── test_design_mindmap_15.1.md
│   │   └── test_report_15.1.md
│   │
│   ├── 15.1.1_Type_of_Standalone_Expression/       # 15.1.1 子子章节（平级放置）
│   │   ├── compile-pass/
│   │   ├── compile-fail/
│   │   ├── runtime/
│   │   ├── cross_lang_verify/
│   │   ├── comparison_report_arkts_java_swift.md
│   │   ├── design_issues_report_15.1.1.md
│   │   ├── test_design_mindmap_15.1.1.md
│   │   └── test_report_15.1.1.md
│   │
│   ├── 15.1.2_Specifics_of_Assignment_like_Contexts/
│   │   ├── compile-pass/
│   │   ├── compile-fail/
│   │   ├── runtime/
│   │   ├── cross_lang_verify/
│   │   └── ... (四份配套文档)
│   │
│   ├── 15.1.3_Specifics_of_Variable_Initialization_Context/
│   ├── 15.1.4_Specifics_of_Numeric_Operator_Contexts/
│   ├── 15.1.5_Specifics_of_String_Operator_Contexts/
│   ├── 15.1.6_Other_Contexts/
│   ├── 15.1.7_Specifics_of_Type_Parameters/
│   ├── 15.1.8_Semantic_Essentials_Summary/
│   │
│   ├── 15.2_Subtyping/                            # 15.2 子类型（主章节）
│   │   ├── compile-pass/
│   │   └── ... (四分类子目录 + 四份配套文档)
│   │
│   ├── 15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/
│   ├── 15.2.2_Subtyping_for_Generic_Classes_and_Interfaces/
│   ├── 15.2.3_Subtyping_for_Literal_Types/
│   ├── 15.2.4_Subtyping_for_Tuple_Types/
│   ├── 15.2.5_Subtyping_for_Union_Types/
│   ├── 15.2.6_Subtyping_for_Function_Types/
│   ├── 15.2.7_Subtyping_for_Fixed_Size_Array_Types/
│   ├── 15.2.8_Subtyping_for_Intersection_Types/
│   ├── 15.2.9_Subtyping_for_Difference_Types/
│   │
│   ├── 15.3_Type_Identity/                        # 15.3 类型同一性
│   ├── 15.4_Assignability/                        # 15.4 可赋值性
│   ├── 15.5_Invariance_Covariance_Contravariance/  # 15.5 不变性/协变/逆变
│   ├── 15.6_Compatibility_of_Call_Arguments/       # 15.6 调用参数兼容性
│   │
│   ├── 15.7_Type_Inference/                      # 15.7 类型推断（主章节）
│   ├── 15.7.1_Type_Inference_for_Constant_Expressions/
│   ├── 15.7.2_Return_Type_Inference/
│   │
│   ├── 15.8_Smart_Casts_and_Smart_Types/        # 15.8 智能类型转换（主章节）
│   ├── 15.8.1_Type_Expression/
│   ├── 15.8.2_Intersection_Types/
│   ├── 15.8.3_Difference_Types/
│   ├── 15.8.4_Computing_Smart_Types/
│   ├── 15.8.5_Control_flow_Graph/
│   ├── 15.8.6_Type_Expression_Simplification/
│   ├── 15.8.7_Smart_Cast_Examples/
│   │
│   ├── 15.9_Overriding/                          # 15.9 覆写（主章节）
│   ├── 15.9.1_Overriding_in_Classes/
│   ├── 15.9.2_Overriding_in_Interfaces/
│   ├── 15.9.3_Override_Compatible_Signatures/
│   │
│   ├── 15.10_Overloading/                        # 15.10 重载（主章节）
│   ├── 15.10.1_Implicit_Function_Overloading/
│   ├── 15.10.2_Implicit_Method_Overloading/
│   ├── 15.10.3_Implicit_Constructor_Overloading/
│   ├── 15.10.4_Overload_Equivalent_Signatures/
│   │
│   ├── 15.11_Overload_Resolution/                # 15.11 重载解析（主章节）
│   ├── 15.11.1_Forming_an_Overload_Set/
│   ├── 15.11.2_Overload_Set_for_Functions/
│   ├── 15.11.3_Overload_Set_for_Interface_Methods/
│   ├── 15.11.4_Overload_Set_for_Class_Static_Methods/
│   ├── 15.11.5_Overload_Set_for_Class_Instance_Methods/
│   ├── 15.11.6_Overload_Set_for_Constructors/
│   ├── 15.11.7_Overload_Set_Warning/
│   ├── 15.11.8_Overload_Set_at_Method_Call/
│   ├── 15.11.9_Overloading_and_Overriding/
│   └── 15.11.10_Dynamic_Resolution_of_Method_Calls/
│   │
│   ├── 15.12_Type_Erasure/                       # 15.12 类型擦除
│   ├── 15.13_Static_Initialization/               # 15.13 静态初始化
│   ├── 15.13.1_Static_Initialization_Safety/
│   ├── 15.14_Compatibility_Features/              # 15.14 兼容性特性
│   ├── 15.14.1_Extended_Conditional_Expressions/
│   │
│   └── cross_lang_verify/                        # 跨语言验证（顶层）
│
├── test_case_catalog.md                   # 用例目录（汇总所有用例索引）
├── test_design_mindmap.md                 # 测试设计思维导图（全局）
├── run_semantic_rules_cases_wsl.sh        # WSL 运行脚本
├── spec_original.md                       # 规范原文
└── issue_report.md                        # 问题报告
```

### 目录结构说明

| 层级 | 说明 |
|------|------|
| `ets_cases/15.X_章节名/` | 主章节目录，命名格式：`15.X_章节英文名称` |
| `ets_cases/15.X.Y_子章节名/` | 子子章节目录，平级放置在 `ets_cases/` 下（参考 `03_Types` 的 `3.15.1_String_Literal_Types/` 结构） |
| `compile-pass/` | 存放编译必须通过的用例（预期编译成功） |
| `compile-fail/` | 存放编译必须失败的用例（预期报特定错误码） |
| `runtime/` | 存放需要运行验证的用例（编译通过 + 运行时行为验证） |
| `cross_lang_verify/` | 存放跨语言对比验证代码（Java/Swift 对照实现） |
| `comparison_report_*.md` | ArkTS vs Java vs Swift 语义对比报告 |
| `design_issues_report_*.md` | 测试设计问题记录（歧义、GAP、决策） |
| `test_design_mindmap_*.md` | 章节测试设计思维导图 |
| `test_report_*.md` | 章节测试执行报告 |

> **注意**：此结构完全对齐 `doc/03_Types/ets_cases/` 的扁平化组织方式，所有章节与子章节目录均平级放置。

---

## 二、各小节测试设计要点

### 15.1 Semantic Essentials（语义基础）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.1.1 Type of Standalone Expression | 独立表达式类型推断：整数字面量(int/long)、浮点字面量(double/float)、常量表达式、数组字面量；object literal 作为独立表达式应报编译错误 | compile-pass, compile-fail |
| 15.1.2 Specifics of Assignment-like Contexts | 赋值类上下文：右表达式类型已知时做可赋值性检查；右表达式类型未知时向左表达式类型对齐；函数调用实参到形参的隐式赋值 | compile-pass, compile-fail |
| 15.1.3 Specifics of Variable Initialization Context | 变量初始化上下文：有显式类型注解时同赋值类上下文；无显式类型注解时从初始化表达式推断类型 | compile-pass, compile-fail |
| 15.1.4 Specifics of Numeric Operator Contexts | 数值操作符上下文：后缀/前缀自增自减对 byte/short 不拓宽；其他数值操作符操作数拓宽到更大数值类型（最小 int） | compile-pass, runtime |
| 15.1.5 Specifics of String Operator Contexts | 字符串操作符上下文：二元 '+' 中任一操作数为 string 时，另一操作数做字符串转换 | compile-pass, runtime |
| 15.1.6 Other Contexts | 其他上下文：覆写使用子类型关系判断 | compile-pass, compile-fail |
| 15.1.7 Specifics of Type Parameters | 类型参数特殊性：赋值类上下文中左表达式为类型参数时无法提供推断信息；目标类型为类型参数时按独立表达式推断 | compile-fail |
| 15.1.8 Semantic Essentials Summary | 术语汇总验证：Type of Expression, Assignment-like Contexts, Type Inference from Initializer 等 | compile-pass |

---

### 15.2 Subtyping（子类型）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.2.1 Subtyping for Non-Generic Classes and Interfaces | 非泛型类/接口的直接子类型关系（extends 子句）；每条子类型链的传递闭包；Object 为隐式超类型 | compile-pass, compile-fail |
| 15.2.2 Subtyping for Generic Classes and Interfaces | 泛型类/接口的子类型：不变性（Invariance）—— `Array<Derived>` 不是 `Array<Base>` 的子类型；泛型约束下的子类型判断 | compile-pass, compile-fail |
| 15.2.3 Subtyping for Literal Types | 字面量类型的子类型：string literal type 是 string 的子类型；numeric literal type 是对应数值类型的子类型 | compile-pass, compile-fail |
| 15.2.4 Subtyping for Tuple Types | 元组类型的子类型：同结构元组间无子类型关系（除非完全相同）；只读元组的子类型规则 | compile-fail |
| 15.2.5 Subtyping for Union Types | 联合类型的子类型：U<:T 当且仅当 U 的每个成员类型都<:T | compile-pass, compile-fail |
| 15.2.6 Subtyping for Function Types | 函数类型的子类型：参数类型逆变，返回类型协变；函数类型赋值兼容性 | compile-pass, compile-fail |
| 15.2.7 Subtyping for Fixed-Size Array Types | 固定大小数组类型的子类型：同结构 FixedArray 间无子类型关系（除非完全相同） | compile-fail |
| 15.2.8 Subtyping for Intersection Types | 交集类型的子类型：S<:T1&T2 当 S<:T1 且 S<:T2 | compile-pass, compile-fail |
| 15.2.9 Subtyping for Difference Types | 差异类型的子类型：S<:T1-T2 当 S<:T1 且 S 不是 T2 的子类型 | compile-pass, compile-fail |

---

### 15.3 Type Identity（类型同一性）

| 测试要点 | 用例类型 |
|---------|---------|
| 同名类型同一性判定；泛型类型同一性（类型参数相同才同一）；字面量类型同一性 | compile-pass, compile-fail |

---

### 15.4 Assignability（可赋值性）

| 测试要点 | 用例类型 |
|---------|---------|
| S 可赋值给 T 的判定规则：S<:T；S 为 undefined 且 T 包含 undefined；数值拓宽赋值；void 赋值规则 | compile-pass, compile-fail |

---

### 15.5 Invariance, Covariance and Contravariance（不变性、协变、逆变）

| 测试要点 | 用例类型 |
|---------|---------|
| 泛型不变性验证；函数参数类型逆变；函数返回类型协变；数组协变（ArkTS 限制） | compile-pass, compile-fail |

---

### 15.6 Compatibility of Call Arguments（调用参数的兼容性）

| 测试要点 | 用例类型 |
|---------|---------|
| 实参类型与形参类型的兼容性检查；可选参数处理；剩余参数处理；参数过多/过少报错 | compile-pass, compile-fail |

---

### 15.7 Type Inference（类型推断）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.7.1 Type Inference for Constant Expressions | 常量表达式的类型推断规则 | compile-pass |
| 15.7.2 Return Type Inference | 函数返回类型推断：显式返回类型标注；从 return 语句推断；无 return 时推断为 void | compile-pass, compile-fail |

---

### 15.8 Smart Casts and Smart Types（智能类型转换与智能类型）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.8.1 Type Expression | 类型表达式语法与求值 | compile-pass |
| 15.8.2 Intersection Types | 智能转换中的交集类型计算 | compile-pass, compile-fail |
| 15.8.3 Difference Types | 智能转换中的差异类型计算 | compile-pass, compile-fail |
| 15.8.4 Computing Smart Types | 智能类型计算过程：类型守卫（typeof、instanceof）、控制流分析 | compile-pass, runtime |
| 15.8.5 Control-flow Graph | 控制流图对智能类型的影响：if/else、switch、循环 | compile-pass, runtime |
| 15.8.6 Type Expression Simplification | 类型表达式化简规则 | compile-pass |
| 15.8.7 Smart Cast Examples | 综合示例：联合类型上的智能转换；类型收缩 | runtime |

---

### 15.9 Overriding（覆写）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.9.1 Overriding in Classes | 类中方法覆写：override 关键字要求；返回类型协变；访问修饰符不能更严格；静态方法不能被覆写 | compile-pass, compile-fail |
| 15.9.2 Overriding in Interfaces | 接口中方法覆写：默认方法覆写；抽象方法实现 | compile-pass, compile-fail |
| 15.9.3 Override-Compatible Signatures | 覆写兼容签名判定：参数类型相同；返回类型协变；异常类型不更广 | compile-pass, compile-fail |

---

### 15.10 Overloading（重载）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.10.1 Implicit Function Overloading | 函数重载：同名不同参函数声明；重载解析 | compile-pass, runtime |
| 15.10.2 Implicit Method Overloading | 方法重载：类中同名不同参方法 | compile-pass, runtime |
| 15.10.3 Implicit Constructor Overloading | 构造函数重载 | compile-pass, runtime |
| 15.10.4 Overload-Equivalent Signatures | 重载等价签名判定：同名同参数类型（含类型参数）视为等价，应报编译错误 | compile-fail |

---

### 15.11 Overload Resolution（重载解析）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.11.1 Forming an Overload Set | 重载集的构成规则 | compile-pass |
| 15.11.2 Overload Set for Functions | 函数重载集解析：精确匹配优先；赋值兼容性匹配 | compile-pass, runtime |
| 15.11.3 Overload Set for Interface Methods | 接口方法重载集解析 | compile-pass, runtime |
| 15.11.4 Overload Set for Class Static Methods | 类静态方法重载集解析 | compile-pass, runtime |
| 15.11.5 Overload Set for Class Instance Methods | 类实例方法重载集解析 | compile-pass, runtime |
| 15.11.6 Overload Set for Constructors | 构造函数重载集解析 | compile-pass, runtime |
| 15.11.7 Overload Set Warning | 重载集警告：模糊调用（ambiguous call） | compile-fail (warning) |
| 15.11.8 Overload Set at Method Call | 方法调用时的重载集选择 | compile-pass, runtime |
| 15.11.9 Overloading and Overriding | 重载与覆写的交互：子类覆写父类方法同时新增重载 | compile-pass, runtime |
| 15.11.10 Dynamic Resolution of Method Calls | 方法调用的动态解析（虚方法分派） | runtime |

---

### 15.12 Type Erasure（类型擦除）

| 测试要点 | 用例类型 |
|---------|---------|
| 泛型类型擦除规则：类型参数被擦除为其约束或 Object；擦除后产生的桥接方法；FixedArray 中不允许使用擦除不保留的类型 | compile-fail, runtime |
| 已知 ArkTS GAP：`Promise<int>` 不能用于 `FixedArray` 类型参数（ESE461884） | known-issue |

---

### 15.13 Static Initialization（静态初始化）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.13 Static Initialization | 静态字段/变量的初始化时机与顺序；静态初始化块 | runtime |
| 15.13.1 Static Initialization Safety | 静态初始化的线程安全：并发执行时静态初始化安全性保证 | runtime |

---

### 15.14 Compatibility Features（兼容性特性）

| 小节 | 测试要点 | 用例类型 |
|------|---------|---------|
| 15.14 Compatibility Features | 兼容模式下的扩展语义（deprecated） | compile-pass, runtime |
| 15.14.1 Extended Conditional Expressions | 扩展条件表达式：三元条件表达式、条件与、条件或、逻辑非在兼容模式下的语义 | compile-pass, runtime |
> **Note**：扩展语义已被标记为 deprecated，测试时需确认当前 ArkTS 版本是否仍支持。

---

## 三、测试用例目录文件（test_case_catalog.md）

> **参考模板**：`doc/03_Types/test_case_catalog.md`
> **用途**：汇总所有测试用例索引，便于用例管理与追溯

### 文件位置

`doc/15_Semantic_Rules/test_case_catalog.md`

### 字段说明

| 字段 | 说明 |
|------|------|
| ID | 用例编号，格式：`SEM_15_XX_YYY`（XX=章节号，YYY=序号） |
| SubTopic | 所属子章节，如 `15.1.1`、`15.2.3` |
| Type | 用例类型：`compile-pass` / `compile-fail` / `runtime` |
| Case File | 用例文件名（相对路径，基于扁平化结构） |
| Purpose | 测试目的（中文简述） |
| Expected | 预期结果：`PASS` / `FAIL` / `ESEXXXX` / `WARN` |

### 模板示例

```markdown
# 15 Semantic Rules Test Case Catalog

| ID | SubTopic | Type | Case File | Purpose | Expected |
|---|---|---|---|---|---|
| SEM_15_01_001 | 15.1.1 | compile-pass | ets_cases/15.1.1_Type_of_Standalone_Expression/compile-pass/SEM_15_01_001_PASS_INT_LITERAL_TYPE.ets | 验证整数字面量作为独立表达式类型为 int | PASS |
| SEM_15_01_002 | 15.1.1 | compile-fail | ets_cases/15.1.1_Type_of_Standalone_Expression/compile-fail/SEM_15_01_002_FAIL_OBJECT_LITERAL_STANDALONE.ets | 验证 object literal 作为独立表达式报编译错误 | ESE0127 |
| SEM_15_02_001 | 15.2.1 | compile-pass | ets_cases/15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/compile-pass/SEM_15_02_001_PASS_CLASS_EXTENDS_SUBTYPE.ets | 验证类 extends 关系的子类型判定 | PASS |
| SEM_15_06_001 | 15.6 | compile-pass | ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/SEM_15_06_001_PASS_CALL_ARGS_COMPATIBLE.ets | 验证调用参数类型兼容性 | PASS |
```

> **注**：完整 catalog 在各章节用例文件就位后，通过脚本自动生成或手动维护。
> **路径说明**：用例文件路径基于扁平化结构，`15.1.1` 子章节目录直接在 `ets_cases/` 下。

---

## 四、测试设计思维导图（test_design_mindmap.md）

> **参考模板**：`doc/03_Types/test_design_mindmap.md`
> **用途**：全局测试设计思维导图，概括所有章节的测试策略

### 文件位置

- **全局**：`doc/15_Semantic_Rules/test_design_mindmap.md`
- **章节级**：`doc/15_Semantic_Rules/ets_cases/15.X_章节名/test_design_mindmap_15.X.md`
- **子章节级**：`doc/15_Semantic_Rules/ets_cases/15.X.Y_子章节名/test_design_mindmap_15.X.Y.md`

> **注意**：由于采用扁平化结构，子章节的思维导图也平级放置在对应子章节目录下。

### 全局思维导图模板

```markdown
# 15 Semantic Rules Test Design Mindmap

- Semantic Rules
  - compile-pass
  - compile-fail
  - runtime
  - boundary
  - negative diagnostics
  - interoperability with related chapters

## Subtopics

- 15.1_Semantic_Essentials
  - normal cases
  - edge cases
  - error cases
- 15.1.1_Type_of_Standalone_Expression
  - numeric literals (int/long, double/float)
  - constant expressions
  - array literals
  - object literal (compile-fail)
- 15.1.2_Specifics_of_Assignment_like_Contexts
  - known RHS type
  - unknown RHS type, infer from LHS
- 15.2_Subtyping
  - normal cases
  - edge cases
  - error cases
- 15.2.1_Subtyping_Non_Generic
  - class extends
  - interface extends
  - transitive closure
- 15.3_Type_Identity
  - normal cases
  - edge cases
  - error cases
- 15.4_Assignability
  - normal cases
  - edge cases
  - error cases
- 15.5_Invariance_Covariance_Contravariance
  - normal cases
  - edge cases
  - error cases
- 15.6_Compatibility_of_Call_Arguments
  - normal cases
  - edge cases
  - error cases
- 15.7_Type_Inference
  - normal cases
  - edge cases
  - error cases
- 15.8_Smart_Casts_and_Smart_Types
  - normal cases
  - edge cases
  - error cases
- 15.9_Overriding
  - normal cases
  - edge cases
  - error cases
- 15.10_Overloading
  - normal cases
  - edge cases
  - error cases
- 15.11_Overload_Resolution
  - normal cases
  - edge cases
  - error cases (ambiguous)
- 15.12_Type_Erasure
  - normal cases
  - error cases (ESE461884)
  - known compiler GAPs
- 15.13_Static_Initialization
  - runtime order
  - thread safety
- 15.14_Compatibility_Features
  - deprecated extended semantics
  - conditional expressions
```

### 章节级思维导图要点

每个章节/子章节目录下的 `test_design_mindmap_*.md` 应包含：

1. **测试范围**：本章节覆盖的规范条款
2. **测试策略**：compile-pass / compile-fail / runtime 分类原则
3. **用例矩阵**：按子章节展开的测试点清单
4. **边界条件**：需要重点验证的边界场景
5. **跨章节关联**：与其他章节的交叉测试点

---

## 五、WSL 运行脚本（run_semantic_rules_cases_wsl.sh）

> **参考模板**：`doc/03_Types/run_types_cases_wsl.sh`
> **用途**：在 WSL 环境下批量运行测试用例，统计编译/运行结果
> **适配结构**：扁平化目录结构（`ets_cases/` 下所有 `15.*` 目录）

### 文件位置

`doc/15_Semantic_Rules/run_semantic_rules_cases_wsl.sh`

### 脚本框架（参照 03_Types 模板，适配扁平化结构）

```bash
#!/usr/bin/env bash
set -eo pipefail

# ArkTS 编译器与运行时路径（根据实际环境调整）
ES2PANDA=~/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=~/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
TMPDIR=/tmp/arkts_semantic_test_$(date +%s)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CASE_ROOT="${SCRIPT_DIR}/ets_cases"

PASS=0
FAIL=0
TOTAL=0
FAILED_CASES=()

mkdir -p "${TMPDIR}"

# 错误检测函数
has_errors() {
    local input="$1"
    while IFS= read -r line; do
        if [[ "$line" =~ ^\[.*\]\ Syntax\ error ]] || \
           [[ "$line" =~ ^\[.*\]\ Semantic\ error ]] || \
           [[ "$line" =~ ^\[.*\][^W].*[Ee]rror[^:] ]]; then
            return 0
        fi
    done <<< "$input"
    return 1
}

# compile-pass 用例运行
run_compile_pass() {
    local file="$1"
    local name=$(basename "$file")
    local out="${TMPDIR}/${name}.abc"
    local errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$errors"; then
        echo "  FAIL  ${name}  (expected pass, got compile errors)"
        FAIL=$((FAIL + 1))
        FAILED_CASES+=("${name}")
    else
        echo "  PASS  ${name}"
        PASS=$((PASS + 1))
    fi
    TOTAL=$((TOTAL + 1))
}

# compile-fail 用例运行
run_compile_fail() {
    local file="$1"
    local name=$(basename "$file")
    local out="${TMPDIR}/${name}.abc"
    local errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$errors"; then
        echo "  PASS  ${name}"
        PASS=$((PASS + 1))
    else
        echo "  FAIL  ${name}  (expected compile error, got success)"
        FAIL=$((FAIL + 1))
        FAILED_CASES+=("${name}")
    fi
    TOTAL=$((TOTAL + 1))
}

# runtime 用例运行
run_runtime() {
    local file="$1"
    local name=$(basename "$file")
    local basename_no_ext="${name%.ets}"
    local out="${TMPDIR}/${basename_no_ext}.abc"
    
    # 编译
    local compile_errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$compile_errors"; then
        echo "  FAIL  ${name}  (compile failed)"
        FAIL=$((FAIL + 1))
        FAILED_CASES+=("${name}")
        TOTAL=$((TOTAL + 1))
        return
    fi
    
    # 运行
    local run_result=$("${ARK}" "${out}" 2>&1) || true
    local run_exit=$?
    if [ $run_exit -eq 0 ]; then
        echo "  PASS  ${name}"
        PASS=$((PASS + 1))
    else
        echo "  FAIL  ${name}  (runtime exit code: ${run_exit})"
        FAIL=$((FAIL + 1))
        FAILED_CASES+=("${name}")
    fi
    TOTAL=$((TOTAL + 1))
}

echo "=========================================="
echo "  15 Semantic Rules - Test Case Runner"
echo "=========================================="
echo ""

# 遍历 ets_cases/ 下所有 15.* 目录（扁平化结构）
# 按章节号排序运行
for chapter_dir in $(find "${CASE_ROOT}" -maxdepth 1 -type d -name "15.*" | sort); do
    chapter_name=$(basename "$chapter_dir")
    echo "[SECTION] ${chapter_name}"
    
    # compile-pass
    if [ -d "${chapter_dir}/compile-pass" ]; then
        for case_file in "${chapter_dir}"/compile-pass/*.ets; do
            [ -f "$case_file" ] && run_compile_pass "$case_file"
        done
    fi
    
    # compile-fail
    if [ -d "${chapter_dir}/compile-fail" ]; then
        for case_file in "${chapter_dir}"/compile-fail/*.ets; do
            [ -f "$case_file" ] && run_compile_fail "$case_file"
        done
    fi
    
    # runtime
    if [ -d "${chapter_dir}/runtime" ]; then
        for case_file in "${chapter_dir}"/runtime/*.ets; do
            [ -f "$case_file" ] && run_runtime "$case_file"
        done
    fi
    
    echo ""
done

echo "=========================================="
echo "  Test Results"
echo "=========================================="
echo "Total: $TOTAL, Pass: $PASS, Fail: $FAIL"
echo "Pass Rate: $(awk "BEGIN {printf \"%.2f%%\", ($PASS/$TOTAL)*100}")"
if [ ${#FAILED_CASES[@]} -gt 0 ]; then
    echo ""
    echo "Failed Cases:"
    for fc in "${FAILED_CASES[@]}"; do
        echo "  - $fc"
    done
fi
echo "=========================================="
```

> **关键修改**：使用 `find "${CASE_ROOT}" -maxdepth 1 -type d -name "15.*" | sort` 遍历扁平化结构下的所有章节目录。

---

## 六、实施优先级建议

> **目录创建顺序**：按扁平化结构，先创建主章节目录，再创建子子章节目录

| 批次 | 目录 | 原因 |
|------|------|------|
| **P0（首批）** | `15.1_Semantic_Essentials/`, `15.1.1_*/...`, `15.2_Subtyping/`, `15.2.1_*/...`, `15.4_Assignability/`, `15.5_Invariance_Covariance_Contravariance/` | 最基础语义规则，其他章节依赖 |
| **P1（第二批）** | `15.3_Type_Identity/`, `15.6_Compatibility_of_Call_Arguments/`, `15.7_Type_Inference/`, `15.7.1_*/...`, `15.12_Type_Erasure/` | 类型系统核心，与 Type 章节高度关联 |
| **P2（第三批）** | `15.8_Smart_Casts_and_Smart_Types/`, `15.8.1_*/...`, `15.9_Overriding/`, `15.9.1_*/...`, `15.10_Overloading/`, `15.10.1_*/...`, `15.11_Overload_Resolution/`, `15.11.1_*/...` | 较复杂，涉及控制流与重载解析 |
| **P3（第四批）** | `15.13_Static_Initialization/`, `15.13.1_*/...`, `15.14_Compatibility_Features/`, `15.14.1_*/...` | 运行时行为，兼容性特性（deprecated） |

---

## 七、用例命名规范

> **参考**：`doc/03_Types/ets_cases/` 用例命名风格
> **适配结构**：扁平化目录结构，用例按子章节分类存放

### 命名格式

```
SEM_15_XX_YYY_[PASS|FAIL]_[描述].ets
```

| 字段 | 说明 | 示例 |
|------|------|------|
| `SEM_15` | 固定前缀，表示 Semantic Rules 章节 | `SEM_15` |
| `XX` | 章节号，两位数字（对应 `15.X` 或 `15.X.Y`） | `01`, `02`, `06`, `11` |
| `YYY` | 用例序号，三位数字 | `001`, `002`, `015` |
| `PASS` / `FAIL` | 预期结果 | `PASS` 表示编译通过，`FAIL` 表示编译失败 |
| `描述` | 英文大写蛇形命名，概括测试点 | `INT_LITERAL_TYPE`, `OBJECT_LITERAL_STANDALONE` |

### 命名示例（扁平化结构）

| 文件名 | 存放路径 | 说明 |
|--------|---------|------|
| `SEM_15_01_001_PASS_INT_LITERAL_TYPE.ets` | `ets_cases/15.1.1_Type_of_Standalone_Expression/compile-pass/` | 15.1.1 子章节，整数字面量类型测试，预期编译通过 |
| `SEM_15_01_002_FAIL_OBJECT_LITERAL_STANDALONE.ets` | `ets_cases/15.1.1_Type_of_Standalone_Expression/compile-fail/` | 15.1.1 子章节，object literal 独立表达式测试，预期编译失败 |
| `SEM_15_02_001_PASS_CLASS_EXTENDS_SUBTYPE.ets` | `ets_cases/15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/compile-pass/` | 15.2.1 子章节，类 extends 关系测试 |
| `SEM_15_06_001_PASS_CALL_ARGS_COMPATIBLE.ets` | `ets_cases/15.6_Compatibility_of_Call_Arguments/compile-pass/` | 15.6 主章节，调用参数兼容性测试 |

---

## 八、配套文档模板

> **参考**：`doc/03_Types/ets_cases/` 配套文档
> **适配结构**：扁平化目录结构，每个章节/子章节目录均包含四份配套文档

### 文档命名规范

| 文档类型 | 命名格式 | 存放路径示例 |
|----------|----------|----------------|
| 对比报告 | `comparison_report_arkts_java_swift.md` | `ets_cases/15.1.1_Type_of_Standalone_Expression/` |
| 设计问题报告 | `design_issues_report_15.X[.Y].md` | `ets_cases/15.2_Subtyping/` |
| 测试设计思维导图 | `test_design_mindmap_15.X[.Y].md` | `ets_cases/15.6_Compatibility_of_Call_Arguments/` |
| 测试报告 | `test_report_15.X[.Y].md` | `ets_cases/15.8_Smart_Casts_and_Smart_Types/` |

> **注意**：子章节（如 `15.1.1`）的文档命名使用 `15.1.1`，而非 `15.1`。

### 8.1 对比报告（comparison_report_arkts_java_swift.md）

**用途**：记录 ArkTS 与 Java、Swift 在对应语义规则上的行为差异

**模板结构**：
```markdown
# 15.X[Y] 章节名 - ArkTS/Java/Swift 对比报告

## 1. 概述
## 2. 类型系统差异
## 3. 语义规则差异
## 4. 代码示例对比
## 5. 测试策略影响
```

### 8.2 设计问题报告（design_issues_report_15.X[.Y].md）

**用途**：记录测试设计过程中发现的规范歧义、编译器 GAP、设计决策

**模板结构**：
```markdown
# 15.X[Y] 章节名 - 设计问题报告

## 1. 规范歧义
## 2. 编译器 GAP
## 3. 设计决策
## 4. 待确认问题
```

### 8.3 测试设计思维导图（test_design_mindmap_15.X[.Y].md）

**用途**：章节级测试设计思维导图，细化测试点

**模板结构**：参照第四节"测试设计思维导图"中的章节级要点

### 8.4 测试报告（test_report_15.X[.Y].md）

**用途**：记录测试执行结果、覆盖率、发现问题

**模板结构**：
```markdown
# 15.X[Y] 章节名 - 测试报告

## 1. 测试执行概况
## 2. 用例清单
## 3. 执行结果统计
## 4. 发现的问题
## 5. 改进建议
```

---

## 九、已知编译器 GAP 与限制

| GAP 描述 | 相关小节 | 状态 |
|----------|---------|------|
| `Promise<int>` 不能用于 `FixedArray` 类型参数（ESE461884） | 15.12 Type Erasure | Known Issue |
| 协变/逆变检查在回调场景中不完整 | 15.5, 15.2.6 | Compiler GAP |
| 扩展条件表达式语义已 deprecated | 15.14.1 | Spec Deprecated |

---

## 十、与 03_Types 模板的对照

> **结构设计**：本方案完全参照 `doc/03_Types/ets_cases/` 的扁平化目录结构

| 项目 | 03_Types | 15_Semantic_Rules | 说明 |
|------|-----------|-------------------|------|
| 目录结构 | 完全扁平化（`3.15.1_*/` 平级放置） | 完全扁平化（`15.1.1_*/` 平级放置） | 结构完全一致 |
| 章节数量 | 22 个目录（含子章节） | 14 个主章节 + 约 50 个子子章节 | Semantic Rules 子章节更多 |
| 四分类子目录 | 每个目录均有 | 每个目录均有 | 规范要求一致 |
| 配套文档 | 每个目录均有四份 | 每个目录均有四份 | 规范要求一致 |
| runtime 用例 | 较多 | 较少 | Semantic Rules 以编译期检查为主 |
| 跨语言验证 | Java/Swift | Java/Swift | 保持一致 |

### 扁平化结构示例对照

**03_Types 结构**：
```
ets_cases/
├── 3.15_Literal_Types/              ← 主章节
├── 3.15.1_String_Literal_Types/    ← 子章节（平级）
├── 3.16_Array_Types/               ← 主章节
├── 3.16.1_Resizable_Array_Types/   ← 子章节（平级）
```

**15_Semantic_Rules 结构**（本方案）：
```
ets_cases/
├── 15.1_Semantic_Essentials/                    ← 主章节
├── 15.1.1_Type_of_Standalone_Expression/       ← 子章节（平级）
├── 15.1.2_Specifics_of_Assignment_like_Contexts/ ← 子章节（平级）
├── 15.2_Subtyping/                            ← 主章节
├── 15.2.1_Subtyping_for_Non_Generic_Classes_and_Interfaces/ ← 子章节（平级）
```

---

*方案版本：v3.0*
*更新日期：2026-06-22*
*参考模板：`doc/03_Types/`*
*主要修订：v2.0→v3.0，目录结构改为完全扁平化，与 03_Types 模板一致*
