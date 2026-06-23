# 15 Semantic Rules - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/15Semantic Rules.md`。

---

15.3 Type Identity

_Identity _relation between two types means that the types are indistinguishable. Identity relation is symmetric and transitive. Identity relation for types A and B is defined as follows:

• Array types A = T1 [] and B = Array are identical if T1 and T2 are identical.

• Tuple types A = [T1 , T2 , ..., Tn ] and B = [U1 , U2 , ..., Um ] are identical on condition that:

**– **n is equal to m, i.e., the types have the same number of elements;

**– **Every _T_i is identical to _U_i for any _i _in 1 . . n.

• Union types A = T1 | T2 | ... | Tn and B = U1 | U2 | ... | Um are identical on condition that:

**– **n is equal to m, i.e., the types have the same number of elements;

**– **_U_i in U undergoes a permutation after which every _T_i is identical to _U_i for any _i _in 1 . . n.

• Types A and B are identical if A is a subtype of B (A<:B), and B is at the same time a subtype of A (A:>B).

. **Note **

_Type Alias Declaration_creates no new type but only a new name for the existing type. An alias is indistinguishable from its base type.

1

2

3

4

5

6

7

. **Note **

If a generic class or an interface has a type parameter T while its method has its own type parameter T, then the two types are diferent and unrelated.

class A<T> { data : T

constructor (p: T) { this.data = p } // OK, as here 'T' is a class type parameter

method <T>(p : T) {

this.data = p // Compile-time error as 'T' of the class is different from 'T' of␣ ˓→ the method

}

}
