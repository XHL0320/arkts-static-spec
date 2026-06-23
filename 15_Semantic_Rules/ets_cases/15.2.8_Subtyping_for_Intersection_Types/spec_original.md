# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.2.8 Subtyping for Intersection Types

Intersection type I defined as (I1 & . . . & In ) is a subtype of type T if Ii is a subtype of T for some i.

Type T is a subtype of intersection type (I1 & . . . & In ) if T is a subtype of each Ii .
