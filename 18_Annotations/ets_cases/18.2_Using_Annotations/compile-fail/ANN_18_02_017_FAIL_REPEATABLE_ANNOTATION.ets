/**
 * @id ANN_18_02_017_FAIL_REPEATABLE_ANNOTATION
 * @expect compile-fail
 * @section 18.2
 * @design 验证重复注解导致编译错误
 * @note 反向用例：同一注解在同一声明上使用两次
 */
@interface MyAnno {}

@MyAnno
@MyAnno
class C {}
