/**
 * @id NAM_04_05_01_001_FAIL_EMPTY_ALIAS
 * @expect compile-fail
 * @section 4.5.1
 * @design 空类型别名定义，应产生编译错误
 * @note 反向用例：类型别名右侧不能为空
 */
type Empty = ;
