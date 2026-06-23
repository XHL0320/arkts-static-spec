/**
 * @id SEM_15_02_01_003_PASS_class_to_object
 * @expect compile-pass
 * @section 15.2.1
 * @design 无 extends 子句的类 S 是 Object 的直接子类型：S<:Object
 * @note 来自规范 15.2.1 例：class S {} → function foo(o: Object) {} → foo(new S()) OK
 */
class S {
    value: string = "test"
}
function foo(o: Object): void {}
function main(): void {
    foo(new Object())
    foo(new S())
}
