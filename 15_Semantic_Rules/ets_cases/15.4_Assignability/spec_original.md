# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.4 Assignability

Type T1 is assignable to type T2 if:

• T1 is a subtype of T2 (see Subtyping); or

• _Implicit conversion _(see Implicit Conversions) is present that allows converting a value of type T1 to type T2 .

_Assignability _relationship is asymmetric, i.e., that T1 is assignable to T2 does not imply that T2 is assignable to type T1 .
