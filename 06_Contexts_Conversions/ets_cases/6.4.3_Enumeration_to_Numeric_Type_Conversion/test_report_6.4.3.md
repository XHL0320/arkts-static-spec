# 6.4.3 Enumeration to Numeric Type Conversion - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 9 | 9 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **17** | **17** | **0** | **100%** |

## 转换矩阵

| 枚举基类型 | int | long | double | number | union |
|-----------|:--:|:--:|:--:|:--:|:--:|
| int | 001/014 | 002/014 | 003/014 | 005 | 006/017 |
| double | ❌ | ❌ | 004/015 | — | — |
| string | ❌ | ❌ | ❌ | ❌ | ❌ |

## compile-pass
| # | 用例 | 验证 |
|---|------|------|
| 1 | INT_ENUM_TO_INT | IntegerEnum→int |
| 2 | INT_ENUM_TO_LONG | enum→long (更大) |
| 3 | INT_ENUM_TO_DOUBLE | enum→double (更大) |
| 4 | DOUBLE_ENUM_TO_DOUBLE | DoubleEnum:double→double |
| 5 | ENUM_TO_NUMBER | enum→number |
| 6 | ENUM_TO_UNION | enum→int\|long |
| 7 | ENUM_IN_CALL | 枚举→int/long/double 形参 |
| 8 | ENUM_IN_RETURN | return enum→int/long/double |
| 9 | ENUM_IN_ARITHMETIC | enum+int, enum*int |

## compile-fail
| # | 用例 | 验证 |
|---|------|------|
| 10 | INT_ENUM_TO_BYTE | int-enum→byte 拒绝 |
| 11 | DOUBLE_ENUM_TO_INT | double-enum→int 拒绝 |
| 12 | STRING_ENUM_TO_INT | string-enum→int 拒绝 |
| 13 | INT_ENUM_TO_SHORT | int-enum→short 拒绝 |

## 后续运行命令
```bash
SECTIONS="6.4.3_Enumeration_to_Numeric_Type_Conversion" bash run_contexts_conversions_cases_wsl.sh
```
