/**
 * @id NAM_04_07_029_FAIL_RETURN_IMPLICIT_UNDEFINED
 * @expect compile-fail
 * @section 4.7.7
 * @design 非 void/undefined 返回类型的空函数体
 * @note 反向用例：spec 4.7.7 行1388 function foo1(): number {} 编译错误。
 *       此行1378 "If a function return type is other than void or undefined...
 *       and the execution path has neither a return statement nor a throw
 *       statement, then a compile-time error occurs."
 *
 * GAP POTENTIAL: 类型 5（语法糖消解）— {} 空块和 { ; } 是否被视为"有执行路径"？
 *       编译器可能将空块优化为 return undefined；从而绕过了检查。
 *       或者编译器在 IR 层"什么都不做"也算正常路径，触发 never 检查。
 *
 * SPEC EXPECTS: empty body + non-void return → error
 */
function emptyBody(): number {}
