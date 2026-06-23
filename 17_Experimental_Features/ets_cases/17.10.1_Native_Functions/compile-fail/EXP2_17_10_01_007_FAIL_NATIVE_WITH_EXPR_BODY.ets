/**
 * @id EXP2_17_10_01_007_FAIL_NATIVE_WITH_EXPR_BODY
 * @expect compile-fail
 * @section 17.10.1
 * @design 原生函数不能有表达式体：验证 native function 带 expression body (= expr) 产生语法错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
native function bar(): int = 42
