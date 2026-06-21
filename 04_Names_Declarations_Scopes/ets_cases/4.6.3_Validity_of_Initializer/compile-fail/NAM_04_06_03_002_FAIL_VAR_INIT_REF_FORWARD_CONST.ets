/**
 * @id NAM_04_06_03_002_FAIL_VAR_INIT_REF_FORWARD_CONST
 * @expect compile-fail
 * @section 4.6.3
 * @design 变量初始化器引用后方声明的常量
 * @note 反向用例：验证 let 初始化器引用后文 const 声明时编译报错（spec 4.6.3 行722-723）
 */
let c: number = d  // Compile-time error - d is declared later
const d = 123
