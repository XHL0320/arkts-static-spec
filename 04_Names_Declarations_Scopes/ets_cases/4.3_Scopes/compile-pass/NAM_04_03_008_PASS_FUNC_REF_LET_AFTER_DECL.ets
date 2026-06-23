/**
 * @id NAM_04_03_008_PASS_FUNC_REF_LET_AFTER_DECL
 * @expect compile-pass
 * @section 4.3
 * @design 函数 hoisting 可引用声明点之后的 let 变量
 * @note 正向用例：函数在整个模块作用域可访问，
 *       函数体内引用声明点之后的 let 变量是合法的
 */
function earlyRef(): number {
    return lateVar;
}
let lateVar: number = 42;
