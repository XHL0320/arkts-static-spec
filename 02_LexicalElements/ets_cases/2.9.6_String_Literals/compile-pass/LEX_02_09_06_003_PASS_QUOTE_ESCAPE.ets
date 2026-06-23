/**
 * @id LEX_02_09_06_003_PASS_QUOTE_ESCAPE
 * @expect compile-pass
 * @section 2.9.6
 * @design 引号和反斜杠转义
 * @note compile-pass 用例：验证引号和反斜杠转义语法
 */

// 引号转义
let s1: string = "He said \"Hi\""
let s2: string = 'don\'t worry'
let s3: string = "don't worry"

// 反斜杠转义
let s4: string = "\\"
let s5: string = "C:\\Users\\test"
