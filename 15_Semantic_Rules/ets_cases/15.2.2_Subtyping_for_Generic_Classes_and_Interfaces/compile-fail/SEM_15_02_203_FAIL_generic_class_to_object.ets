/**
 * @id SEM_15_02_203_PASS_generic_class_to_object
 * @expect compile-fail
 * @section 15.2.2
 * @design 泛型类（无直接超类）是 Object 的直接子类型：C<U,V> <: Object
 * @note 来自规范 15.2.2 例：example1(c) OK
 */
class C<U, V> {
    foo(u: U): U { return u }
    bar(v: V): V { return v }
}
function main(): void {
    function example1(o: Object): void {}
    let c: C<int, boolean> = new C<int, boolean>()
    example1(c)
}
