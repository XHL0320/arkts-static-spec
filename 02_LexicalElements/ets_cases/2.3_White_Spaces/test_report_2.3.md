# 2.3 White Spaces - 测试执行报告（v2 - 含真实 runtime 执行）

**测试日期：** 2026-06-15
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04
**运行脚本：** `02_LexicalElements/run_lexicalelements_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 21 | 21 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| **runtime（真实执行）** | **7** | **7** | **0** | **100%** |
| **总计** | **38** | **38** | **0** | **100%** |

---

## 6 种空白符覆盖矩阵

| 空白符 | Unicode | 名称 | 用例编号 | 状态 |
|--------|---------|------|----------|------|
| Space | U+0020 | 空格 | 001 | ✅ |
| Tab | U+0009 | 水平制表符 | 002 | ✅ |
| VT | U+000B | 垂直制表符 | 003 | ✅ |
| FF | U+000C | 换页符 | 004 | ✅ |
| NBSP | U+00A0 | 不间断空格 | 005 | ✅ |
| ZWNBSP | U+FEFF | 零宽不间断空格(BOM) | 006 | ✅ |

---

## 修正记录

| 文件 | 原设计 | 实际行为 | 修正方案 |
|------|--------|----------|----------|
| 028_FAIL_NOTEQEQ_SPLIT | `a ! == 2` 应失败 | 编译器解析为 `(a!) == 2`（非空断言+相等比较），编译通过 | 改为 `a & & b`（`&&` 拆为 `& &`），按位与对 boolean 报错 |

---

## 详细结果

### compile-pass（21个，001~021）

| 编号 | 文件 | 验证内容 |
|------|------|---------|
| 001 | PASS_SPACE_SEPARATOR | Space (U+0020) 单独分隔 Token |
| 002 | PASS_TAB_SEPARATOR | Horizontal Tab (U+0009) 单独分隔 |
| 003 | PASS_VTAB_SEPARATOR | Vertical Tab (U+000B) 单独分隔 |
| 004 | PASS_FORMFEED_SEPARATOR | Form Feed (U+000C) 单独分隔 |
| 005 | PASS_NBSP_SEPARATOR | No-Break Space (U+00A0) 单独分隔 |
| 006 | PASS_ZWNBSP_SEPARATOR | Zero-Width No-Break Space (U+FEFF) 单独分隔 |
| 007 | PASS_SPACE_TAB_MIX | Space + Tab 混合分隔 |
| 008 | PASS_ALL_WHITESPACE_MIX | 6 种空白符全部混合分隔 |
| 009 | PASS_REPEATED_WHITESPACE | 多个相同空白符等价于单个 |
| 010 | PASS_WS_BEFORE_KEYWORD | 关键字前的空白（行首缩进） |
| 011 | PASS_WS_BETWEEN_IDENTIFIERS | 标识符与冒号、类型注解之间的空白 |
| 012 | PASS_WS_AROUND_OPERATORS | 运算符两侧空白灵活度 |
| 013 | PASS_WS_BEFORE_SEMICOLON | 分号前的空白 |
| 014 | PASS_WS_AROUND_BRACES | 大括号周围的空白 |
| 015 | PASS_WS_IN_ARRAY_LITERAL | 数组字面量元素间空白 |
| 016 | PASS_WS_IN_FUNC_PARAMS | 函数参数间空白 |
| 017 | PASS_WS_IN_SINGLE_COMMENT | 单行注释内含各种空白符（spec显式允许）|
| 018 | PASS_WS_IN_MULTI_COMMENT | 多行注释内含各种空白符 |
| 019 | PASS_WS_IN_STRING_CONTENT | 字符串字面量内的空白属于内容 |
| 020 | PASS_MIXED_INDENTATION | 行首 Space + Tab 混合缩进 |
| 021 | PASS_ZWNBSP_VARIOUS_POSITIONS | ZWNBSP 在各种位置作分隔符 |

### compile-fail（10个，022~031）

| 编号 | 文件 | 验证内容 | 编译器报错 |
|------|------|---------|-----------|
| 022 | FAIL_SPACE_IN_IDENTIFIER | 标识符中含 Space | ✅ 报错 |
| 023 | FAIL_TAB_IN_IDENTIFIER | 标识符中含 Tab | ✅ 报错 |
| 024 | FAIL_SPACE_IN_NUMBER | 数字字面量内含 Space | ✅ 报错 |
| 025 | FAIL_NBSP_IN_NUMBER | 数字字面量内含 NBSP | ✅ 报错 |
| 026 | FAIL_SPACE_IN_KEYWORD | 关键字内含 Space | ✅ 报错 |
| 027 | FAIL_EQEQ_SPLIT | `==` 拆为 `= =` | ✅ 报错 |
| 028 | FAIL_LOGICAL_AND_SPLIT | `&&` 拆为 `& &` | ✅ 报错 |
| 029 | FAIL_ARROW_SPLIT | `=>` 拆为 `= >` | ✅ 报错 |
| 030 | FAIL_CHAR_PREFIX_SPACE | char 字面量 c 与 ' 间含 Space | ✅ 报错 |
| 031 | FAIL_FLOAT_SPACE | 浮点字面量内含 Space | ✅ 报错 |

### runtime（7个，032~038，**真实 ark VM 执行**）

| 编号 | 文件 | 验证内容 | 断言数 |
|------|------|---------|-------|
| 032 | RT_SPACE_ONLY_ARITH | Space-only 风格运算结果 | 1 |
| 033 | RT_TAB_INDENTED_ARITH | Tab 缩进风格运算结果 | 1 |
| 034 | RT_ALL_WHITESPACE_MIX | 6 种空白混合运算结果 | 1 |
| 035 | RT_NBSP_SEPARATED | NBSP 分隔代码运算结果 | 1 |
| 036 | RT_INDENTATION_STYLE | 不同缩进风格不影响语义 | 1 |
| 037 | RT_MULTI_WS_IN_EXPR | 表达式内多空白不影响计算 | 3 |
| 038 | RT_ZWNBSP_STRING_CONTENT | 字符串字面量内 ZWNBSP 是内容 | 1 |

---

## 关键验证

### Spec 要求验证

| spec 要求 | 验证用例 | 状态 |
|----------|---------|------|
| 6 种空白符均可作分隔符 | 001~006 | ✅ |
| 空白符被语法分析忽略 | 032~037 (运行结果一致) | ✅ |
| 空白符不能出现在 Token 内 | 022~031 (全部编译失败) | ✅ |
| 空白符可以出现在注释中 | 017~018 | ✅ |

### 运行命令

```bash
cd /mnt/e/spec_git/ARKTS_STATIC_TEST/02_LexicalElements
SECTIONS="2.3_White_Spaces" bash run_lexicalelements_cases_wsl.sh
```

输出示例：
```
============================================
  Section: 2.3_White_Spaces
============================================
-- compile-pass --
  [pass] OK: LEX_02_03_001_PASS_SPACE_SEPARATOR.ets
  ...（21 个全 OK）
-- compile-fail --
  [fail] OK (expected error): LEX_02_03_022_FAIL_SPACE_IN_IDENTIFIER.ets
  ...（10 个全 OK）
-- runtime --
  [rt] OK: LEX_02_03_032_RT_SPACE_ONLY_ARITH.ets
  ...（7 个全部真实 ark VM 执行 + assert 通过）

  compile-pass OK: 21
  compile-fail OK: 10
  runtime OK:      7
  unexpected:      0
  total:           38
```

---

## 与 v1 对比改进

| 维度 | v1（仅编译） | v2（当前） |
|------|-------------|-----------|
| runtime 用例总数 | 7 | 7 |
| runtime 实际执行 | ❌ 仅编译 | ✅ ark VM 实际运行 |
| 含 main 函数 + assert | ❌ | ✅ |
| 注释 5 个 tag 齐全 | ❌ 缺 @note | ✅ 全部齐全 |
| 编译器返回码检测 | ⚠️ 误判 | ✅ 已修复 |
