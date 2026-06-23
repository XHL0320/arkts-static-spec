/**
 * @id LEX_02_09_06_019_PASS_OTHER_ESCAPE
 * @expect compile-pass
 * @section 2.9.6
 * @design 其他单字符转义
 * @note compile-pass 用例：验证其他有效单字符转义
 */

// 其他单字符转义（规范：Any single character except digits from '1' to '9' and characters 'x', 'u', 'CR', and 'LF'）
let s1: string = "\a"
let s2: string = "\c"
let s3: string = "\d"
let s4: string = "\e"
let s5: string = "\g"
let s6: string = "\h"
let s7: string = "\i"
let s8: string = "\j"
let s9: string = "\k"
let s10: string = "\l"
let s11: string = "\m"
let s12: string = "\o"
let s13: string = "\p"
let s14: string = "\q"
let s15: string = "\s"
let s16: string = "\w"
let s17: string = "\y"
let s18: string = "\z"
