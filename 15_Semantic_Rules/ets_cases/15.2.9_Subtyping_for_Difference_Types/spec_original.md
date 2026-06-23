# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.9 Subtyping for Difference Types

Diference type A - B is a subtype of T if A is a subtype of T.

Type T is a subtype of the diference type A - B if T is a subtype of A, and no value belongs both to T and B (i.e., T & B = never).
