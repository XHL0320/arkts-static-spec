/**
 * @id ANN_18_02_022_FAIL_SPACE_BEFORE_NAME
 * @expect compile-fail
 * @section 18.2
 * @design 验证 @ 和名称之间不允许空格
 * @note 反向用例：@ MyAnno 有空格
 */
@interface MyAnno {}

@ MyAnno
class C {}
