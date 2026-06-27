/*
 * NSM_13_04_001_PASS_IMPORT_BASIC
 * @id NSM_13_04_001_PASS_IMPORT_BASIC
 * @expect compile-pass
 * @section 13.4
 * @design import 基本语法验证
 * @note 正向用例：验证 import 基本语法编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件 es2panda 无法解析 "@ohos.log"
 *       此用例在多文件构建环境中应能编译通过
 *       当前 es2panda 单文件编译报错：Fatal error F0014: Unresolved module name for path
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import { console } from "@ohos.log"

function main(): void {
    console.log("Import basic works")
}
