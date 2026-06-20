# 04 Names Declarations Scopes Issue Report

记录 04 Names Declarations Scopes 章节下所有子章节执行用例时**实际结果与预期不符且当前未解决**的异常。

---

## 当前未解决异常

无。无确认的规范-实现 GAP。

---

## 章节最新执行统计

| 子章节 | 用例总数 | 通过 | 失败 | 最近执行 |
|-------|:-------:|:----:|:----:|---------|
| 4.1 Names | 15 | 14 | 1 | 2026-06-19 |
| 4.2 Declarations | 13 | 13 | 0 | 2026-06-19 |
| 4.3 Scopes | 15 | 15 | 0 | 2026-06-19 |
| 4.4 Accessible | 12 | 12 | 0 | 2026-06-20 |
| 4.5 Type Declarations | 23 | 23 | 0 | 2026-06-19 |
| 4.6 Variable/Constant | 25 | 25 | 0 | 2026-06-19 |
| 4.7 Function Declarations | 29 | 28 | 1 | 2026-06-19 |

**累计 132 个测试用例，131 通过，1 失败**

---

## 注

### 已知基础设施限制（非编译器 GAP）

以下失败均为测试框架环境限制，**不是**编译器行为背离规范：

| 用例 | 失败原因 | 分类 |
|------|---------|------|
| NAM_04_01_020 | runtime entrypoint 找不到类（编译正常，ABC 入口问题） | 测试框架 |
| NAM_04_07_027 | runtime 执行失败（Cannot find class ETSGLOBAL） | 测试框架 |

### 历史已解决

| 问题 | 修复 |
|------|------|
| NAM_04_02_017 空文件 | 已补充 `declare function + let` 同名冲突测试代码 |

### Spec 文档问题（非执行异常，记录于 `analysis_report.md`）

- Spec 未完整列举所有保留名（如 `int`、`Box`、`string`）
- `int` 作为隐式推断类型未被正式定义
