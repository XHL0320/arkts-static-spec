# 2.7 Keywords - 测试执行报告（v2 - 含真实 runtime 执行）

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
| compile-pass | 35 | 35 | 0 | 100% |
| compile-fail | 16 | 16 | 0 | 100% |
| **runtime（真实执行）** | **5** | **5** | **0** | **100%** |
| **总计** | **56** | **56** | **0** | **100%** |

---

## 4 类关键字覆盖矩阵

### 表 1：硬关键字（47 个）

| 关键字 | 反向用例编号 | 正向用例编号 |
|-------|-----------|-----------|
| class | 001 | 011 |
| let | 002 | 011, 014 |
| const | 003 | 020 |
| function | 004 | 011, 014 |
| if | 005 | 014 |
| return | 006 | 016 |
| new | 007 | 011, 022 |
| null | 008 | 021 |
| true | 009 | 021 |
| instanceof | 010 | 016 |
| interface, extends, implements | (覆盖) | 012 |
| enum | (覆盖) | 013 |
| else, do, while, for, switch, case, default, break, continue | (覆盖) | 014 |
| try, catch, throw | (覆盖) | 015 |
| typeof, as | (覆盖) | 016 |
| public, private, protected | (覆盖) | 017 |
| static, abstract, override | (覆盖) | 018 |
| async, await | (覆盖) | 019 |
| import, export | (覆盖) | 020 |
| false, undefined | (覆盖) | 021 |
| this, super, constructor | (覆盖) | 022 |

### 表 2：类型关键字（17 个）

| 关键字（主名/别名） | 反向用例 | 正向（别名）用例 |
|------------------|--------|----------------|
| int / Int | 023 | 028 |
| string / String | 024 | 029 |
| boolean / Boolean | 025 | 030 |
| Object / object | 026 | 032 |
| void | 027 | (类型注解使用) |
| bigint / BigInt | (覆盖) | 031 |
| byte/short/long/float/double/char + 别名 | (待覆盖) | (待覆盖) |
| Any/number/Number | (待覆盖) | (待覆盖) |

### 表 3：软关键字（13 个）

| 关键字 | 关键字上下文 | 标识符上下文 |
|-------|-----------|-----------|
| type | 033 | 041 |
| namespace | 034 | (待) |
| readonly | 035 | (待) |
| get / set | 036 | 044 |
| keyof | 037 | (待) |
| of | 038 | 043 |
| finally | 040 | (待) |
| from | (需 import 上下文) | 042 |
| catch | (覆盖于 015) | (待) |
| declare, module, out | (待覆盖) | (待) |

### 表 4：未来保留软关键字（5 个）

| 关键字 | 用例 | 状态 |
|-------|------|------|
| is | 045 | ✅ 可作标识符 |
| memo | 046 | ✅ 可作标识符 |
| struct | 047 | ✅ 可作标识符（ArkUI 上下文外）|
| var | 048 | ⚠️ 反向用例：var 作变量声明失败 |
| yield | 049 | ✅ 可作标识符 |

---

## 修正记录

| 文件 | 原设计 | 实际行为 | 修正方案 |
|------|--------|----------|----------|
| 034_PASS_SOFT_KW_NAMESPACE | `export function double(...)` | `double` 是类型关键字，不能作函数名 | 改名为 `multiply` |

---

## 大小写敏感验证

| 用例 | 测试 |
|------|------|
| 050 | `Class`, `CLASS`（首字母大写、全大写）→ 普通标识符 |
| 051 | `LET`, `Let` → 普通标识符 |
| 052 | `iNt`, `nUlL`, `fAlSe`, `TrUe` → 普通标识符 |

---

## runtime（5 个，**真实 ark VM 执行 + assert**）

| 编号 | 文件 | 验证内容 | 断言数 |
|------|------|---------|-------|
| 053 | RT_TYPEOF | typeof 返回非空字符串 | 3 |
| 054 | RT_INSTANCEOF | instanceof 子类与父类都为 true | 2 |
| 055 | RT_SUPER_THIS | super.method + this.field | 1 |
| 056 | RT_TYPE_ALIAS | int + Int 运算 | 1 |
| 057 | RT_SOFT_KW_AS_IDENT | type/from/of/is/memo 作变量名运算 | 1 |

---

## 累计进度

| 章节 | 用例数 | 通过率 |
|------|--------|--------|
| 2.1~2.6 | 196 | 100% |
| **2.7 Keywords** | **56** | **100%** |
| **累计** | **252** | **100%** |
