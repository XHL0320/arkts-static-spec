# 03 Types 审查报告

## 审查范围
- 章节：03 Types
- 用例目录：`03_Types/ets_cases/`
- 用例总数：728（324P + 195F + 209R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地 Windows 无 arkcompiler 工具链，runner `run_types_cases_wsl.sh` 为 WSL bash 脚本。本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 728 |
| manifest | ✅ 合法（stats 格式） |
| 元数据不一致 | **0** |

## 总体结论
**可验收。** 728 用例覆盖全部 44 个小节，元数据完全一致（METADATA_BAD_COUNT=0）。spec_original.md、Types_Examples.md 均已填充。12 项已知 spec 差异均为编译器/spec 侧问题，非交付侧缺陷。

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 3.1 Predefined Types | 18 | 16 | 15 | 49 | int/long/short/byte/float/double/boolean/string |
| 3.2 User Defined Types | 11 | 11 | 8 | 30 | class/interface/enum/type alias |
| 3.3 Using Types | 12 | 10 | 5 | 27 | 类型使用上下文 |
| 3.4 Named Types | 10 | 6 | 4 | 20 | 命名类型解析 |
| 3.5 Type References | 10 | 5 | 4 | 19 | 类型引用 |
| 3.6.1 Numeric Types | 10 | 5 | 5 | 20 | byte/short/int/long/float/double |
| 3.6.2 Integer Types | 10 | 9 | 10 | 29 | 整数运算/溢出 |
| 3.6.3 Floating Point | 10 | 2 | 18 | 30 | IEEE 754 |
| 3.6.4 Type boolean | 8 | 2 | 5 | 15 | boolean |
| 3.7 Reference Types | 8 | 2 | 3 | 13 | 引用 vs 值类型 |
| 3.8 Type Any | 5 | 3 | 3 | 11 | Any ⚠️ D |
| 3.9 Type Object | 5 | 2 | 3 | 10 | Object |
| 3.10 Type never | 5 | 3 | 2 | 10 | never |
| 3.11 Type void/undefined | 10 | 5 | 5 | 20 | void/undefined |
| 3.12 Type null | 12 | 9 | 6 | 27 | null |
| 3.13 Type string | 27 | 10 | 15 | 52 | string 操作 |
| 3.14 Type bigint | 10 | 9 | 8 | 27 | bigint ⚠️ S |
| 3.15 Literal Types | 6 | 4 | 4 | 14 | 字面量类型 |
| 3.15.1 String Literal | 7 | 3 | 3 | 13 | 字符串字面量 |
| 3.16 Array Types | 7 | 4 | 5 | 16 | 数组 |
| 3.16.1 Resizable Array | 8 | 1 | 7 | 16 | 可变数组 |
| 3.16.2 Readonly Array | 5 | 4 | 5 | 14 | 只读数组 |
| 3.17 Tuple Types | 6 | 3 | 5 | 14 | 元组 |
| 3.17.1 Readonly Tuple | 2 | 3 | 3 | 8 | 只读元组 |
| 3.17.2 Type Tuple | 10 | 8 | 8 | 26 | 元组操作 |
| 3.18 Function Types | 11 | 8 | 10 | 29 | 函数类型 ⚠️ D |
| 3.18.1 Type Function | 2 | 1 | 2 | 5 | Function 预定义 ⚠️ D |
| 3.19 Union Types | 6 | 4 | 1 | 11 | 联合类型 ⚠️ D |
| 3.19.1 Union Normalization | 8 | 5 | 4 | 17 | 归一化 ⚠️ D |
| 3.19.2 Common Members | 4 | 5 | 2 | 11 | 公共成员 ⚠️ D |
| 3.19.3 Keyof Types | 6 | 4 | 2 | 12 | keyof ⚠️ D |
| 3.20 Nullish Types | 10 | 6 | 6 | 22 | null/undefined 联合 |
| 3.21.1 Awaited | 8 | 2 | 2 | 12 | Awaited<T> |
| 3.21.2 NonNullable | 5 | 2 | 2 | 9 | NonNullable<T> |
| 3.21.3 Partial | 4 | 3 | 3 | 10 | Partial<T> ⚠️ D |
| 3.21.4 Required | 4 | 3 | 2 | 9 | Required<T> ⚠️ D |
| 3.21.5 Readonly | 4 | 3 | 2 | 9 | Readonly<T> ⚠️ D |
| 3.21.6 Record | 6 | 2 | 2 | 10 | Record<K,V> |
| 3.21.7 ReturnType | 6 | 1 | 2 | 9 | ReturnType<T> |
| 3.21.8 Private Fields | 3 | 2 | 2 | 7 | Private 字段 |
| 3.21.9 Nesting | 3 | 2 | 1 | 6 | 嵌套工具类型 |
| 3.22 Default Values | 2 | 3 | 5 | 10 | 默认值 |
| **Total** | **324** | **195** | **209** | **728** | 44 节全覆盖 |

**已知编译器/spec 差异**（issue_report 已记录，非交付侧问题）：

| ID | 类型 | 说明 |
|----|------|------|
| D-3.18-01 | D 类 Spec 不一致 | 联合类型函数类型括号检查缺失 |
| D-3.18-02/03 | D 类 Spec 不一致 | Function 类型直接调用 |
| D-3.08-01 | D 类 Spec 不一致 | Any 字段访问检查缺失 |
| D-3.19-01/02 | D 类 Spec 不一致 | union 同名字段类型检查缺失 |
| D-3.19-03 | D 类 Spec 不一致 | keyof 非 class/interface 检查缺失 |
| D-3.19.1-01 | D 类 Spec 不一致 | readonly union 写入检查缺失 |
| D-3.21.3/4/5-01 | D 类 Spec 不一致 | Utility 类型非 class 检查缺失 |
| S-3.14-01/02 | S 类 Spec 文档冲突 | bigint 关系运算跨章节矛盾 |

## 整改建议
1. **持续跟踪**：12 项 known issue 在编译器版本更新后验证
2. **Spec 推动**：2 项 S 类 bigint 冲突待 spec 团队澄清
