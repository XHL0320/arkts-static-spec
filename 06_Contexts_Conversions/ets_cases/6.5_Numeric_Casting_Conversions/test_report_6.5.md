# 6.5 Numeric Casting Conversions - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

## 转换方法覆盖

| 方法 | 编译 | 运行时 |
|------|:--:|:--:|
| int.toLong() | 001 | 015 |
| int.toDouble() | 002 | 015 |
| double.toInt() | 003 | 011, 016 |
| double.toLong() | 007 | — |
| double.toFloat() | 004 | 014 |
| long.toInt() | 005 | 012 |
| int.toByte() | 006 | 013 |
| byte.toShort/toInt/toLong/toDouble | 007 | — |
| 链式转换 | 008 | 016 |

## 运行时验证的关键行为

| 行为 | 验证 |
|------|------|
| double→int 向零舍入 | 3.14→3, -3.14→-3, 3.9→3, -3.9→-3 |
| int→byte 位截断 | 255→-1, 128→-128 |
| int→long/double widening | 值保留 |
| 链式往返 | 3.14→int→long→double = 3.0 |

## 后续运行命令
```bash
SECTIONS="6.5_Numeric_Casting_Conversions" bash run_contexts_conversions_cases_wsl.sh
```
