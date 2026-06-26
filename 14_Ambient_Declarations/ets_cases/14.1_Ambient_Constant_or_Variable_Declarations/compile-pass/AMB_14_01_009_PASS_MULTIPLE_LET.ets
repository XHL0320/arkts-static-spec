/**
 * @id AMB_14_01_009_PASS_MULTIPLE_LET
 * @expect compile-pass
 * @section 14.1
 * @design declare let 多变量声明，逗号分隔，每项均有显式类型注解，无初始化器
 * @note 正向用例：验证 ambient let 多声明语法编译通过
 */
declare let a: int, b: string, c: boolean
