/**
 * @id LEX_02_10_009_PASS_COMMENT_UNICODE
 * @expect compile-pass
 * @section 2.10
 * @design 注释中包含 Unicode
 * @note compile-pass 用例：验证注释中包含 Unicode
 */

// Unicode: 你好世界 🌍
let x1: int = 1

/* Unicode: 你好世界 🌍 */
let x2: int = 2
