/**
 * @id SEM_15_02_05_101_FAIL_two_union_subtype_gap
 * @expect compile-fail
 * @section 15.2.5
 * @design U2 的成员 T5 既不在 U1 成员中也不是其子类型，U2 不是 U1 子类型
 * @note 来自规范 15.2.5 例：u1 = u2 编译错误（T5 不在 T1|T2 中）
 */
class T1 {}
class T2 {}
class T3 extends T1 {}
class T4 extends T2 {}
class T5 {}
function main(): void {
    let u1: T1|T2 = new T1()
    let u2: T3|T4|T5 = new T3()
    u1 = u2
}
