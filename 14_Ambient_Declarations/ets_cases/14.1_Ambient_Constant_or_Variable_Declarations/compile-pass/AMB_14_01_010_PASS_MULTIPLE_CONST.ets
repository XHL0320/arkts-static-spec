/**
 * @id AMB_14_01_010_PASS_MULTIPLE_CONST
 * @expect compile-pass
 * @section 14.1
 * @design declare const 多变量声明，逗号分隔，每项均有显式类型注解，无初始化器
 * @note 正向用例：验证 ambient const 多声明语法编译通过
 */
declare const a: int, b: string, c: boolean
