/**
 * @id NAM_04_06_02_102_FAIL_CONST_NO_TYPE_NO_INIT
 * @expect compile-fail
 * @section 4.6.2
 * @design 常量既无类型也无初始化器
 * @note 反向用例：验证 const 既无类型标注也无初始化器时编译报错
 */
const x;
