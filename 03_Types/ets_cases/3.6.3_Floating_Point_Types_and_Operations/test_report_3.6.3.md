# 3.6.3 Floating-Point Types and Operations - 测试执行报告

**测试日期：** 2026-06-11
**编译器：** es2panda
**运行时：** ark VM + boot files
**对应规范：** ArkTS Static Spec §3.6.3

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 8 | 8 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

**🎯 一次通过率：100%**

---

## 详细执行结果

### compile-pass（10个）
- 001 浮点声明
- 002 关系/相等比较
- 003 一元 + -
- 004 算术 + - * / %
- 005 ** 幂运算 → double
- 006 自增自减
- 007 三元 ?:
- 008 字符串拼接
- 009 浮点 → 整数 (toInt/toLong)
- 010 整数 widening 到浮点

### compile-fail（2个）
- 011 浮点 ↔ boolean 互转
- 012 字面量超范围

### runtime（8个）
- 013 NaN 性质
- 014 Infinity 性质
- 015 round-toward-zero
- 016 上溢 → ±Infinity
- 017 gradual underflow
- 018 类型推升 double 优先
- 019 浮点除零 → ±Inf/NaN
- 020 字符串拼接 decimal

## 后续运行

```bash
SECTIONS="3.6.3_Floating_Point_Types_and_Operations" bash run_types_cases_wsl.sh
```