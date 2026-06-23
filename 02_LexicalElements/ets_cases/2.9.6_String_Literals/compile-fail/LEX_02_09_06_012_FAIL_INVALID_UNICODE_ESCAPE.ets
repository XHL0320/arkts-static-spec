/**
 * @id LEX_02_09_06_012_FAIL_INVALID_UNICODE_ESCAPE
 * @expect compile-fail
 * @section 2.9.6
 * @design 无效 Unicode 转义
 * @note compile-fail 用例：验证编译器拒绝无效 Unicode 转义
 */

// 无效 Unicode 转义，编译失败
let s: string = "\uGGGG"
