/**
 * @id LEX_02_09_03_006_PASS_SCIENTIFIC_UNDERSCORE
 * @expect compile-pass
 * @section 2.9.3
 * @design 科学计数法带下划线
 * @note compile-pass 用例：验证科学计数法下划线分隔符语法
 */

// 科学计数法带下划线
let x1: double = 1_000e10
let x2: double = 1.5_00e-5
let x3: double = 1e1_0
