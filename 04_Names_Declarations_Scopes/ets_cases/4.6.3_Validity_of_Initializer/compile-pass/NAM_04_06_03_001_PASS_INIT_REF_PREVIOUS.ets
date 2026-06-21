/**
 * @id NAM_04_06_013_PASS_INIT_REF_PREVIOUS
 * @expect compile-pass
 * @section 4.6.3
 * @design 初始化引用前文声明
 * @note 正向用例：验证初始化表达式可以合法引用前文已声明的变量
 */
let x: number = 10;
let y: number = x;
let z: string = "hello";
let w: string = z;
