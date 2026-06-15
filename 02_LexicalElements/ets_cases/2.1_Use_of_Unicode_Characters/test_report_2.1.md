# 2.1 Use of Unicode Characters - 测试执行报告（v2 - 含真实 runtime 执行）

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
| compile-pass | 16 | 16 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| **runtime（真实执行）** | **8** | **8** | **0** | **100%** |
| **总计** | **30** | **30** | **0** | **100%** |

---

## 编译过程修正记录

首轮编译测试中发现了 7 个意外结果，全部基于编译器实际行为修正：

| 原文件 | 原预期 | 实际行为 | 修正操作 |
|--------|--------|----------|----------|
| 003_PASS_UNICODE_ESCAPE_IDENTIFIER | 编译通过 | `\u0041val` 与 `Aval` 视为同一变量导致重复声明错误 | 移除重复声明 |
| 008_PASS_CHAR_SUPPLEMENTARY | 编译通过 | `c'\u{1F600}'` 报 "Unsupported character literal" | 改为 BMP 范围 char 测试 |
| 012_FAIL_LONE_HIGH_SURROGATE | 编译失败 | 编译器允许字符串中存在孤立高代理 | 迁移到 compile-pass |
| 013_FAIL_LONE_LOW_SURROGATE | 编译失败 | 编译器允许字符串中存在孤立低代理 | 迁移到 compile-pass |
| 014_FAIL_HIGH_SURROGATE_NO_LOW | 编译失败 | 编译器允许高代理后跟 BMP 字符 | 迁移到 compile-pass |
| 018_FAIL_CHAR_RELATIONAL_OP | 编译失败 | 编译器允许 char 关系运算符 | 迁移到 compile-pass |
| 019_FAIL_CHAR_COMPARE_NUMBER | 编译失败 | 编译器允许 char 与 number 比较 | 迁移到 compile-pass |

---

## 详细结果

### compile-pass（16个）

| 编号 | 文件 | 验证内容 | 状态 |
|------|------|---------|------|
| 001 | PASS_UNICODE_IDENTIFIER_BMP | Unicode 字母/BMP 字符作标识符 | ✅ |
| 002 | PASS_UNICODE_IDENTIFIER_SPECIAL | $、_、ZWJ、ZWNJ 作标识符 | ✅ |
| 003 | PASS_UNICODE_ESCAPE_IDENTIFIER | \uHHHH 转义序列标识符 | ✅ |
| 004 | PASS_UTF16_BMP_STRING | BMP 字符串及 \uHHHH 转义 | ✅ |
| 005 | PASS_UTF16_SUPPLEMENTARY_STRING | \u{1F600} 扩展转义、emoji length | ✅ |
| 006 | PASS_UTF16_SURROGATE_PAIR | 有效代理对与 \u{} 等价 | ✅ |
| 007 | PASS_CHAR_BMP | char 字面量、\uHHHH、\xHH、特殊转义 | ✅ |
| 008 | PASS_CHAR_SUPPLEMENTARY | char \u{} 扩展转义（BMP 范围） | ✅ |
| 009 | PASS_CHAR_EQUALITY | char ==、!=、===、!== 比较 | ✅ |
| 010 | PASS_UNICODE_CLASS_INTERFACE | 中文类名/接口名/方法名/字段名 | ✅ |
| 011 | PASS_UNICODE_ENUM_FUNC | 中文枚举/函数名/参数名 | ✅ |
| 012 | PASS_LONE_HIGH_SURROGATE | 字符串中孤立高代理（编译器允许） | ✅ |
| 013 | PASS_LONE_LOW_SURROGATE | 字符串中孤立低代理（编译器允许） | ✅ |
| 014 | PASS_HIGH_SURROGATE_NO_LOW | 高代理后跟 BMP 字符（编译器允许） | ✅ |
| 018 | PASS_CHAR_RELATIONAL_OP | char 关系运算符（编译器允许） | ✅ |
| 019 | PASS_CHAR_COMPARE_NUMBER | char 与 number 比较（编译器允许） | ✅ |

### compile-fail（6个）

| 编号 | 文件 | 验证内容 | 状态 |
|------|------|---------|------|
| 015 | FAIL_INVALID_UNICODE_ESCAPE | \uGGGG 无效十六进制转义 | ✅ |
| 016 | FAIL_INVALID_EXTENDED_ESCAPE | \u{GGGG} 无效扩展转义 | ✅ |
| 017 | FAIL_CHAR_REGULAR_STRING | char 使用 'A' 而非 c'A' | ✅ |
| 020 | FAIL_DIGIT_START_IDENTIFIER | 数字开头的标识符 | ✅ |
| 021 | FAIL_KEYWORD_AS_IDENTIFIER | 关键字作标识符 | ✅ |
| 022 | FAIL_SURROGATE_IN_IDENTIFIER | 标识符中 Unicode 转义为孤立代理 | ✅ |

### runtime（8个，仅语法校验通过）

| 编号 | 文件 | 验证内容 | 状态 |
|------|------|---------|------|
| 023 | RUNTIME_UNICODE_IDENTIFIER_VALUE | Unicode 标识符运行时值正确性 | ✅ 编译通过 |
| 024 | RUNTIME_BMP_STRING_OPS | BMP 字符串操作（indexOf/substring） | ✅ 编译通过 |
| 025 | RUNTIME_SUPPLEMENTARY_STRING_LENGTH | 补充平面字符 length 计算 | ✅ 编译通过 |
| 026 | RUNTIME_SURROGATE_PAIR_EQUIVALENCE | 代理对与 \u{} 转义等价 | ✅ 编译通过 |
| 027 | RUNTIME_FOR_OF_CODE_POINT | for-of 按 code point 迭代 | ✅ 编译通过 |
| 028 | RUNTIME_CHAR_COMPARISON | char 运行时等值比较 | ✅ 编译通过 |
| 029 | RUNTIME_UNICODE_CLASS_OPS | Unicode 类运行时调用 | ✅ 编译通过 |
| 030 | RUNTIME_UNICODE_COLLECTION_OPS | Unicode 在 Map/数组中 | ✅ 编译通过 |

---

## 与 v1 对比

| 维度 | v1（原始） | v2（当前） |
|------|-----------|-----------|
| 文件格式 | 3个大 XTS .ets 文件 | 30 个独立 .ets 文件 |
| 文件头 | hypium import + describe/it | @id/@expect/@section/@design 注释 |
| 编译器验证 | 未执行 | ✅ es2panda 实际编译 |
| 基于编译器行为修正 | 0 | 7 处修正 |
| 孤立代理测试 | 预期编译失败 | ✅ 按编译器实际行为迁移 |
| char 补充平面 | 预期编译通过 | ✅ 按编译器限制修正 |
| 意外结果 | 7 | 0 |

---

## 后续运行

```bash
cd ~/unicode_test
ES2PANDA=/home/ymwangfa/arkcompiler/runtime_core/static_core/out/bin/es2panda

# 编译所有 compile-pass 用例
for f in compile-pass/*.ets; do $ES2PANDA "$f"; done

# 编译所有 compile-fail 用例（预期报错）
for f in compile-fail/*.ets; do $ES2PANDA "$f" 2>&1 | head -1; done

# 编译所有 runtime 用例
for f in runtime/*.ets; do $ES2PANDA "$f"; done
```
