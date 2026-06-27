/*
 * NSM_13_04_5_001_PASS_IMPORT_RELATIVE_PATH
 * @id NSM_13_04_5_001_PASS_IMPORT_RELATIVE_PATH
 * @expect compile-pass
 * @section 13.4.5
 * @design 相对路径导入（以 './' 或 '../' 开头）
 * @note 正向用例：验证相对路径 import 编译通过
 *       ⚠️ C 类：需要辅助模块文件 "./mytreeutils"，单文件无法验证
 *       分类：C 类（编译器实现限制 — 需要辅助模块文件）
 */
import * as Utils from "./mytreeutils"

function main(): void {
    Utils.someFunction()
}
