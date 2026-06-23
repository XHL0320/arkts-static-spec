/**
 * @id SEM_15_02_02_102_FAIL_generic_interface_to_object
 * @expect compile-fail
 * @section 15.2.2
 * @design 泛型接口（无直接超接口）是 Object 的直接子类型：I<U,V> <: Object
 * @note 来自规范 15.2.2 例：example2(i) OK
 */
interface I<U, V> {
    foo(u: U): U
    bar(v: V): V
}
class D<U, V> implements I<U, V> {
    foo(u: U): U { return u }
    bar(v: V): V { return v }
}
function main(): void {
    function example2(o: Object): void {}
    let i: I<int, boolean> = new D<int, boolean>()
    example2(i)
}
