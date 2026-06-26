/**
 * @id AMB_14_01_006_PASS_CONST_INT
 * @expect compile-pass
 * @section 14.1
 * @design declare const 声明 int 类型，显式类型注解，无初始化器
 * @note 正向用例：验证 ambient const 声明 int 类型编译通过
 */
declare const c1: int
