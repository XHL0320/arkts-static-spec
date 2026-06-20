# 10.6 Interface Inheritance - 设计问题报告

## 补充覆盖
- **ITF_10_06_010/011（新增）：** 验证继承链中属性访问权限穿透检查。
  原 spec 示例在 §10.6 中明确标注了继承中的 getter-only 写和 setter-only 读应报错，但 10.6 节此前零 compile-fail。
  新增用例覆盖该规范示例场景，编译器正确报错，无 gap。

No critical design issues identified.
