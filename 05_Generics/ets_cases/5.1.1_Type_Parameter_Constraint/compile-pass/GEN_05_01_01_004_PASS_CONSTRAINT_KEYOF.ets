/**
 * @id GEN_05_01_01_004_PASS_CONSTRAINT_KEYOF
 * @expect compile-pass
 * @section 5.1
 * @design 类型参数约束-keyof
 * @note 正向用例：验证 extends keyof 约束通过编译
 */
class A {
    f1: number = 0;
    f2: string = "";
    f3: boolean = false;
}
class B<T extends keyof A> {}
let b1: B<"f1"> = new B<"f1">();
let b3: B<keyof A> = new B<keyof A>();
