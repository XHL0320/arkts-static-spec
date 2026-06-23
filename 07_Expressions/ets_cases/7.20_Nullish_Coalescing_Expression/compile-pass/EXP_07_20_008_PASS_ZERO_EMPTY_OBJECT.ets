/**
 * @id EXP_07_20_008_PASS_ZERO_EMPTY_OBJECT
 * @expect compile-pass
 * @section 7.20
 * @design 验证 0 变量 ?? 1 和对象 ?? default 编译通过。
 *         数值 0 和对象不是 nullish 值，不会触发取 RHS。
 * @note 正向用例：数值 0 和对象编译通过
 */

class Foo {}

function test_zero(): void {
    let z: int = 0;
    let x: int = z ?? 1;
}

function test_object(): void {
    let obj: Foo = new Foo();
    let y: Foo = obj ?? new Foo();
}
