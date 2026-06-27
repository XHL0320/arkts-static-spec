/**
 * @id ANN_18_02_002_PASS_EMPTY_PARENS
 * @expect compile-pass
 * @section 18.2
 * @design 验证空括号的注解用法
 * @note 正向用例：@Anno() 空括号
 */
@interface MyAnno {}

@MyAnno()
class C {}
