# 10 Interfaces - Test Case Catalog

> 共 59 个 .ets 测试用例，全部使用 `SEM_` 前缀

## §10.1 Interface Declarations (7 用例)

### compile-pass (5)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 1 | `ITF_10_01_001_PASS_basic_interface` | 基础接口声明 |
| 2 | `ITF_10_01_002_PASS_generic_interface` | 泛型接口 |
| 3 | `ITF_10_01_003_PASS_interface_with_extends` | 接口 extends |
| 4 | `ITF_10_01_004_PASS_multiple_members` | 多成员接口 |
| 5 | `ITF_10_01_005_PASS_interface_default_method` | 默认方法(实验特性) |

### compile-fail (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 6 | `ITF_10_01_100_FAIL_interface_instantiation` | 接口不能 new |

### runtime (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 7 | `ITF_10_01_200_RUNTIME_interface_polymorphism` | 接口多态运行时 |

## §10.2 Superinterfaces & Subinterfaces (8 用例)

### compile-pass (3)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 8 | `ITF_10_02_001_PASS_single_extends` | 单继承 |
| 9 | `ITF_10_02_002_PASS_multiple_extends` | 多继承 |
| 10 | `ITF_10_02_003_PASS_multi_level_extends` | 多层继承 |

### compile-fail (4)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 11 | `ITF_10_02_100_FAIL_extends_non_interface` | extends 非接口 |
| 12 | `ITF_10_02_101_FAIL_extends_cycle` | 循环继承 |
| 13 | `ITF_10_02_102_FAIL_self_extends` | 自继承 |
| 14 | `ITF_10_02_103_FAIL_bad_type_args` | 错误类型参数 |

### runtime (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 15 | `ITF_10_02_200_RUNTIME_multi_level_extends` | 多层继承运行时调用 |

## §10.3 Interface Members (6 用例)

### compile-pass (3)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 16 | `ITF_10_03_001_PASS_property_and_method` | 属性+方法 |
| 17 | `ITF_10_03_002_PASS_multiple_methods` | 多方法 |
| 18 | `ITF_10_03_003_PASS_object_method_clash` | ⚠️ Object 方法同签名 GAP (ISS-10-01) — 编译器接受，规范应 FAIL |

### compile-fail (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 19 | `ITF_10_03_100_FAIL_duplicate_member` | 重复成员 |
| 20 | `ITF_10_03_101_FAIL_object_method_clash_return_gap` | ❌ Object 返回值冲突 (ISS-10-02 — 编译器未拒绝) |

### runtime (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 21 | `ITF_10_03_200_RUNTIME_method_member` | 接口方法成员运行时调用 |

## §10.4 Interface Properties (4 用例)

### compile-pass (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 22 | `ITF_10_04_001_PASS_interface_property` | 接口属性声明 |

### compile-fail (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 23 | `ITF_10_04_100_FAIL_getter_only_assign` | getter-only 赋值 |
| 24 | `ITF_10_04_101_FAIL_setter_only_read` | setter-only 读取 |

### runtime (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 25 | `ITF_10_04_200_RUNTIME_interface_property` | 接口属性运行时 |

## §10.4.1 Required Interface Properties (8 用例)

### compile-pass (6)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 26 | `ITF_10_04_01_001_PASS_required_readonly` | 必需 readonly 属性 |
| 27 | `ITF_10_04_01_002_PASS_required_readwrite` | 必需 readwrite 属性 |
| 28 | `ITF_10_04_01_003_PASS_getter_setter` | getter + setter |
| 29 | `ITF_10_04_01_004_PASS_getter_only` | getter-only |
| 30 | `ITF_10_04_01_005_PASS_setter_only` | setter-only |
| 31 | `ITF_10_04_01_006_PASS_field_accessor_equivalence` | 字段/访问器等价性（规范 §10.4.1） |

### compile-fail (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 32 | `ITF_10_04_01_100_FAIL_required_not_implemented` | 必需属性未实现 |

### runtime (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 32 | `ITF_10_04_01_200_RUNTIME_required_property` | 必需属性运行时 |

## §10.4.2 Optional Interface Properties (6 用例)

### compile-pass (3)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 33 | `ITF_10_04_02_001_PASS_optional_property` | 可选属性 |
| 34 | `ITF_10_04_02_002_PASS_optional_undefined` | 可选 undefined |
| 35 | `ITF_10_04_02_003_PASS_optional_property_equivalence` | 可选属性等价性（规范 §10.4） |

### compile-fail (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 36 | `ITF_10_04_02_100_FAIL_optional_not_assigned` | 可选属性未赋值 |

### runtime (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 37 | `ITF_10_04_02_200_RUNTIME_optional_property` | 可选属性运行时 |
| 38 | `ITF_10_04_02_201_RUNTIME_optional_property_default_setter` | 可选属性默认 setter（规范 §10.4.2） |

## §10.5 Interface Method Declarations (10 用例)

### compile-pass (6)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 39 | `ITF_10_05_001_PASS_abstract_method` | 抽象方法 |
| 40 | `ITF_10_05_002_PASS_method_with_params` | 带参数方法 |
| 41 | `ITF_10_05_003_PASS_method_with_return` | 带返回值方法 |
| 42 | `ITF_10_05_004_PASS_method_void` | void 方法 |
| 43 | `ITF_10_05_005_PASS_class_implements_interface` | 类实现接口 |
| 44 | `ITF_10_05_006_PASS_multi_interface_impl` | 多接口实现 |

### compile-fail (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 45 | `ITF_10_05_100_FAIL_missing_implementation` | 缺失实现 |
| 46 | `ITF_10_05_101_FAIL_method_signature_mismatch` | 方法签名不匹配 |

### runtime (2)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 47 | `ITF_10_05_200_RUNTIME_interface_impl` | 接口实现运行时 |
| 48 | `ITF_10_05_201_RUNTIME_interface_property` | 接口属性运行时 |

## §10.6 Interface Inheritance (10 用例)

### compile-pass (5)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 49 | `ITF_10_06_001_PASS_inheritance_chain` | 继承链 |
| 50 | `ITF_10_06_002_PASS_diamond_inheritance` | 菱形继承 |
| 51 | `ITF_10_06_003_PASS_interface_type_var` | 接口类型变量 |
| 52 | `ITF_10_06_004_PASS_class_extends_implements` | 类 extends+implements |
| 53 | `ITF_10_06_005_PASS_property_inheritance` | 属性继承（规范 §10.6） |

### compile-fail (4)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 54 | `ITF_10_06_100_FAIL_inherited_getter_only_write` | 继承 getter-only 写 |
| 55 | `ITF_10_06_101_FAIL_inherited_setter_only_read` | 继承 setter-only 读 |
| 56 | `ITF_10_06_102_FAIL_multi_inherit_setter_only_read` | 多继承 setter-only 读 |
| 57 | `ITF_10_06_103_FAIL_multi_inherit_getter_only_write` | 多继承 getter-only 写 |

### runtime (1)
| # | 用例 ID | 语法点 |
|---|---------|------|
| 58 | `ITF_10_06_200_RUNTIME_inheritance_chain` | 继承链运行时方法解析 |

## 统计

| 子节 | PASS | FAIL | RT | 合计 | 状态 |
|------|:--:|:--:|:--:|:--:|:--:|
| 10.1 Interface Declarations | 5 | 1 | 1 | 7 | ✅ |
| 10.2 Superinterfaces & Subinterfaces | 3 | 4 | 1 | 8 | ✅ |
| 10.3 Interface Members | 3 | 2 | 1 | 6 | ⚠️ 1 GAP |
| 10.4 Interface Properties | 1 | 2 | 1 | 4 | ✅ |
| 10.4.1 Required Interface Properties | 6 | 1 | 1 | 8 | ✅ |
| 10.4.2 Optional Interface Properties | 3 | 1 | 2 | 6 | ✅ |
| 10.5 Interface Method Declarations | 6 | 2 | 2 | 10 | ✅ |
| 10.6 Interface Inheritance | 5 | 4 | 1 | 10 | ✅ |
| **总计** | **32** | **17** | **10** | **59** | ⚠️ 1 GAP |

## 命名规范

- 前缀：`ITF_10_XX_NNN_{PASS|FAIL|RUNTIME}_DESCRIPTION.ets`（父级）
- 子节：`ITF_10_XX_ZZ_NNN_{PASS|FAIL|RUNTIME}_DESCRIPTION.ets`（ZZ = 子节号）
- 全部 59 文件使用 `SEM_` 前缀命名
