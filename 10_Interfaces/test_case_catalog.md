# 10 Interfaces — 测试用例目录

> 共 41 个 .ets 测试用例，全部使用 `ITF_` 前缀

## §10.1 Interface Declarations (4 用例)

### compile-pass (4)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 1 | `ITF_10_01_001_PASS_BASIC_INTERFACE` | 基础接口声明 |
| 2 | `ITF_10_01_002_PASS_GENERIC_INTERFACE` | 泛型接口 |
| 3 | `ITF_10_01_003_PASS_INTERFACE_WITH_EXTENDS` | 接口 extends |
| 4 | `ITF_10_01_004_PASS_MULTIPLE_MEMBERS` | 多成员接口 |

## §10.2 Superinterfaces & Subinterfaces (7 用例)

### compile-pass (3)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 5 | `ITF_10_02_001_PASS_SINGLE_EXTENDS` | 单继承 |
| 6 | `ITF_10_02_002_PASS_MULTIPLE_EXTENDS` | 多继承 |
| 7 | `ITF_10_02_003_PASS_MULTI_LEVEL_EXTENDS` | 多层继承 |

### compile-fail (4)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 8 | `ITF_10_02_010_FAIL_EXTENDS_NON_INTERFACE` | extends 非接口 |
| 9 | `ITF_10_02_011_FAIL_EXTENDS_CYCLE` | 循环继承 |
| 10 | `ITF_10_02_012_FAIL_SELF_EXTENDS` | 自继承 |
| 11 | `ITF_10_02_013_FAIL_BAD_TYPE_ARGS` | 错误类型参数 |

## §10.3 Interface Members (5 用例)

### compile-pass (3)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 12 | `ITF_10_03_001_PASS_PROPERTY_AND_METHOD` | 属性+方法 |
| 13 | `ITF_10_03_002_PASS_MULTIPLE_METHODS` | 多方法 |
| 14 | `ITF_10_03_011_PASS_OBJECT_METHOD_CLASH` | ⚠️ Object 方法同签名 GAP (ISS-10-01) — compile-pass 但规范应 FAIL |

### compile-fail (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 15 | `ITF_10_03_010_FAIL_DUPLICATE_MEMBER` | 重复成员 |
| 16 | `ITF_10_03_012_FAIL_OBJECT_METHOD_CLASH_RETURN` | Object 返回值冲突 (ISS-10-02) |

## §10.4 Interface Properties (9 用例)

### compile-pass (7)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 17 | `ITF_10_04_001_PASS_REQUIRED_READONLY` | 必需 readonly 属性 |
| 18 | `ITF_10_04_002_PASS_REQUIRED_READWRITE` | 必需 readwrite 属性 |
| 19 | `ITF_10_04_003_PASS_GETTER_SETTER` | getter + setter |
| 20 | `ITF_10_04_004_PASS_GETTER_ONLY` | getter-only |
| 21 | `ITF_10_04_005_PASS_SETTER_ONLY` | setter-only |
| 22 | `ITF_10_04_006_PASS_OPTIONAL_PROPERTY` | 可选属性 |
| 23 | `ITF_10_04_007_PASS_OPTIONAL_UNDEFINED` | 可选 undefined |

### compile-fail (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 24 | `ITF_10_04_010_FAIL_GETTER_ONLY_ASSIGN` | getter-only 赋值 |
| 25 | `ITF_10_04_011_FAIL_SETTER_ONLY_READ` | setter-only 读取 |

## §10.5 Interface Methods (10 用例)

### compile-pass (6)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 26 | `ITF_10_05_001_PASS_ABSTRACT_METHOD` | 抽象方法 |
| 27 | `ITF_10_05_002_PASS_METHOD_WITH_PARAMS` | 带参数方法 |
| 28 | `ITF_10_05_003_PASS_METHOD_WITH_RETURN` | 带返回值方法 |
| 29 | `ITF_10_05_004_PASS_METHOD_VOID` | void 方法 |
| 30 | `ITF_10_05_005_PASS_CLASS_IMPLEMENTS_INTERFACE` | 类实现接口 |
| 31 | `ITF_10_05_006_PASS_MULTI_INTERFACE_IMPL` | 多接口实现 |

### compile-fail (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 32 | `ITF_10_05_010_FAIL_MISSING_IMPLEMENTATION` | 缺失实现 |
| 33 | `ITF_10_05_011_FAIL_METHOD_SIGNATURE_MISMATCH` | 方法签名不匹配 |

### runtime (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 34 | `ITF_10_05_020_RUNTIME_INTERFACE_IMPL` | 接口实现运行时 |
| 35 | `ITF_10_05_021_RUNTIME_INTERFACE_PROPERTY` | 接口属性运行时 |

## §10.6 Interface Inheritance (6 用例)

### compile-pass (4)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 36 | `ITF_10_06_001_PASS_INHERITANCE_CHAIN` | 继承链 |
| 37 | `ITF_10_06_002_PASS_DIAMOND_INHERITANCE` | 菱形继承 |
| 38 | `ITF_10_06_003_PASS_INTERFACE_TYPE_VAR` | 接口类型变量 |
| 39 | `ITF_10_06_004_PASS_CLASS_EXTENDS_IMPLEMENTS` | 类 extends+implements |

### compile-fail (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 40 | `ITF_10_06_010_FAIL_INHERITED_GETTER_ONLY_WRITE` | 继承 getter-only 写 |
| 41 | `ITF_10_06_011_FAIL_INHERITED_SETTER_ONLY_READ` | 继承 setter-only 读 |

## 统计

| 子节 | PASS | FAIL | RT | 合计 | 状态 |
|------|:--:|:--:|:--:|:--:|:--:|
| 10.1 Interface Declarations | 4 | 0 | 0 | 4 | ✅ |
| 10.2 Superinterfaces | 3 | 4 | 0 | 7 | ✅ |
| 10.3 Interface Members | 3 | 2 | 0 | 5 | ⚠️ 2 GAP |
| 10.4 Interface Properties | 7 | 2 | 0 | 9 | ✅ |
| 10.5 Interface Methods | 6 | 2 | 2 | 10 | ✅ |
| 10.6 Interface Inheritance | 4 | 2 | 0 | 6 | ✅ |
| **总计** | **27** | **12** | **2** | **41** | ⚠️ 2 GAP |

## 命名规范

- 前缀：`ITF_10_XX_NNN_{PASS|FAIL|RUNTIME}_DESCRIPTION.ets`
- `10` = 章节号 | `XX` = 子节号 | `NNN` = 流水号
- 全部 41 文件无全局命名违规，无 0B 空文件，无异常目录
- ⚠️ **单项注意**：#14 `ITF_10_03_011_PASS_OBJECT_METHOD_CLASH.ets` 位于 compile-pass/，但规范应 FAIL（GAP 标注：ISS-10-01）
