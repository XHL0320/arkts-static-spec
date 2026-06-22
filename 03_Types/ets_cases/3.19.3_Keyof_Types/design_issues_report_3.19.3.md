# 3.19.3 Keyof Types - 设计问题报告

## 问题 D-3.19-03：keyof 非 class/interface 类型不报错

**严重性：** LOW
**类别：** D 类（Spec 与实现不一致）
**复现用例：** TYP_03_19_03_007_FAIL_KEYOF_NON_CLASS

## Spec 规则

`keyof typeReference` 中，`typeReference` 必须是 class 或 interface 类型。
否则应产生 compile-time error。

## 实测行为

```typescript
type WrongKeyof = keyof number
```

实际编译通过。

## 跨语言对比

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `keyof number` | ✅ 编译通过（与 Spec 矛盾） |
| Java | 无 compile-time keyof，只能反射 | N/A |
| Swift | 无 compile-time keyof，只能 Mirror | N/A |

## 建议

1. 编译器应检查 `keyof` operand 是否为 class/interface
2. `keyof number`、`keyof string` 等非 class/interface 应编译错误
3. 添加编译器测试覆盖
