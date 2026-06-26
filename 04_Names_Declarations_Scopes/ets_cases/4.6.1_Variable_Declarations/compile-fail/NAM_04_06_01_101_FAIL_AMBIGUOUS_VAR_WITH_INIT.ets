/**
 * @id NAM_04_06_01_101_FAIL_AMBIGUOUS_VAR_WITH_INIT
 * @expect compile-fail
 * @section 4.6.1
 * @design ambient变量有初始化
 * @note 反向用例：验证 ambient 声明有初始化编译错误
 */
declare let y: number = 1;
