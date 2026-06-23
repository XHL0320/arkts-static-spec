/**
 * @id NAM_04_02_100_FAIL_SAME_NAME_CONST_FUNC
 * @expect compile-fail
 * @section 4.2
 * @design 常量和函数同名
 * @note 反向用例：验证同名常量和函数编译错误
 */
const PI: number = 3.14;
function PI(): number { return 3.14; }
