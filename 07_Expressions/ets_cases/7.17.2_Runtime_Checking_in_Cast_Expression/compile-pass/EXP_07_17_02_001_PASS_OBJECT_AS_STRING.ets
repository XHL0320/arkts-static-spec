/**
 * @id EXP_07_17_02_001_PASS_OBJECT_AS_STRING
 * @expect compile-pass
 * @section 7.17.2
 * @design 验证 Object 类型变量 as string 运行时检查编译通过
 * @note 正向用例：x as string 是合法的运行时 cast 表达式
 */
function foo(x: Object): void {
    let s: string = x as string
}
