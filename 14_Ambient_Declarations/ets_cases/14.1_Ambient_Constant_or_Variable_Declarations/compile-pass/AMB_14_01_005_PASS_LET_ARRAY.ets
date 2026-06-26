/**
 * @id AMB_14_01_005_PASS_LET_ARRAY
 * @expect compile-pass
 * @section 14.1
 * @design declare let 声明数组类型 int[]，显式类型注解，无初始化器
 * @note 正向用例：验证 ambient let 声明数组类型编译通过
 */
declare let arr: int[]
