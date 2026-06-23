/**
 * @id LEX_02_10_007_PASS_COMMENT_SPECIAL_CHARS
 * @expect compile-pass
 * @section 2.10
 * @design 注释中包含特殊字符
 * @note compile-pass 用例：验证注释中包含特殊字符
 */

// Special chars: !@#$%^&*()_+-=[]{}|;':",./<>?
let x1: int = 1

/* Special chars: !@#$%^&*()_+-=[]{}|;':",./<>? */
let x2: int = 2
