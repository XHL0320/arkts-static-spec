/**
 * @id NAM_04_06_021_FAIL_CONST_AMBIGUOUS_NO_INIT
 * @expect compile-fail
 * @section 4.6.2
 * @design ambient常量有初始化
 * @note 反向用例：验证 ambient const 声明有初始化编译错误
 */
declare const z: number = 1;
