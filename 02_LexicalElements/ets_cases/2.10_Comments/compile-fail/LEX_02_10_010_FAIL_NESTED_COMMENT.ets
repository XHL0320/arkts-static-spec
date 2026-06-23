/**
 * @id LEX_02_10_010_FAIL_NESTED_COMMENT
 * @expect compile-fail
 * @section 2.10
 * @design 注释不能嵌套
 * @note compile-fail 用例：验证编译器拒绝嵌套注释
 */

/* This is /* nested */ comment */
