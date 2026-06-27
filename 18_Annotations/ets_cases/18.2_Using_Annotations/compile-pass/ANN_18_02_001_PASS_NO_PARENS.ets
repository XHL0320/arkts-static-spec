/**
 * @id ANN_18_02_001_PASS_NO_PARENS
 * @expect compile-pass
 * @section 18.2
 * @design 验证无括号的注解用法
 * @note 正向用例：@Anno 无括号
 */
@interface MyAnno {}

@MyAnno
class C {}
