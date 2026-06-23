/**
 * @id LEX_02_09_07_004_PASS_LINE_CONTINUATION
 * @expect compile-pass
 * @section 2.9.7
 * @design 行续接
 * @note compile-pass 用例：验证行续接语法
 */

// 行续接（反斜杠后跟换行符）
let s1 = `This is a \
continuation`
