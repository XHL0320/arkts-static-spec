/**
 * @id AMB_14_01_014_PASS_LET_FUNCTION_TYPE
 * @expect compile-pass
 * @section 14.1
 * @design declare let 声明函数类型 (x: int) => void，显式类型注解，无初始化器
 * @note 正向用例：验证 ambient let 声明函数类型编译通过
 */
declare let fn: (x: int) => void
