/**
 * @id ANN_18_01_008_FAIL_TYPE_ALIAS_ON_ANNOTATION
 * @expect compile-fail
 * @section 18.1
 * @design 验证注解不能作为类型别名定义
 * @note 反向用例：注解不定义类型，type alias 无法引用注解
 */
@interface Position {}

type Pos = Position // Compile-time error
