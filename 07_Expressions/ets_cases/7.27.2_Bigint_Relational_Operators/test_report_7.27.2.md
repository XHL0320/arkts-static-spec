# 7.27.2 Bigint 关系运算符 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 测试用例已生成，待 WSL 环境实际编译运行

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | - | - | 待执行 |
| compile-fail | 3 | - | - | 待执行 |
| runtime（真实执行） | 2 | - | - | 待执行 |
| **总计** | **8** | **-** | **-** | **待执行** |

---

## 详细执行结果

### compile-pass（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_02_001_PASS_BIGINT_BIGINT_CMP | 验证两个bigint类型操作数之间的关系运算符编译通过，执行bigint有符号比较 | 待执行 |
| | EXP_07_27_02_002_PASS_BIGINT_INT_CMP | 验证bigint与int混合类型关系运算编译通过：int转换为bigint，然后执行bigint比较 | 待执行 |
| | EXP_07_27_02_003_PASS_BIGINT_DOUBLE_CMP | 验证bigint与double混合类型关系运算编译通过：bigint转换为double，然后执行浮点比较 | 待执行 |

### compile-fail（3 用例，待执行）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_02_004_FAIL_BIGINT_STRING | 验证bigint类型与string类型操作数不能用于关系运算符，应产生编译时错误 | 待执行 |
| | EXP_07_27_02_005_FAIL_BIGINT_BOOLEAN | 验证bigint类型与boolean类型操作数不能用于关系运算符，应产生编译时错误 | 待执行 |
| | EXP_07_27_02_006_FAIL_BIGINT_OBJECT | 验证bigint类型与Object类型操作数不能用于关系运算符，应产生编译时错误（bigint无法转换为Object进行关系比较） | 待执行 |

### runtime（2 用例，待执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_02_007_RUNTIME_BIGINT_LARGE | 验证大整数bigint之间的关系比较运行时行为（超出int/long范围的bigint值） | 待执行 |
| | EXP_07_27_02_008_RUNTIME_BIGINT_FLOAT | 验证bigint与float混合类型关系运算运行时行为：双方均转换为double后执行浮点比较 | 待执行 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27.2_Bigint_Relational_Operators" bash run_expressions_cases_wsl.sh
```
