/**
 * @id AMB_14_01_013_PASS_LET_UNION
 * @expect compile-pass
 * @section 14.1
 * @design declare let 声明联合类型 int | string，显式类型注解，无初始化器
 * @note 正向用例：验证 ambient let 声明联合类型编译通过
 */
declare let u: int | string
