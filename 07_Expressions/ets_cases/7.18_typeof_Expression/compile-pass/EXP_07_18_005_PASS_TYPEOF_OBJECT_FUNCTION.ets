/**
 * @id EXP_07_18_005_PASS_TYPEOF_OBJECT_FUNCTION
 * @expect compile-pass
 * @section 7.18
 * @design 验证 typeof Object/function type 编译通过
 * @note 正向用例：Object→"object", function→"function" 编译通过
 */
function foo(): void {}

function testObject(): void {
    let a: Object = "hello"
    let t: string = typeof a
}

function testFunction(): void {
    let f: () => void = foo
    let t: string = typeof f
}
