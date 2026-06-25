/**
 * @id GEN_05_01_01_103_FAIL_KEYOF_CONSTRAINT
 * @expect compile-fail
 * @section 5.1.1
 * @design keyof约束不匹配
 * @note 反向用例：验证 keyof 约束不匹配
 */
class A { f1: number = 0; }
class B<T extends keyof A> {}
let b2: B<"f0"> = new B<"f0">();
