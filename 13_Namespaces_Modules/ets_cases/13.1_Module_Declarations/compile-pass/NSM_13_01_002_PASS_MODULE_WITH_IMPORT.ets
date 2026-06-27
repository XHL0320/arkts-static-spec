/*
 * NSM_13_01_002_PASS_MODULE_WITH_IMPORT
 * @id NSM_13_01_002_PASS_MODULE_WITH_IMPORT
 * @expect compile-pass
 * @section 13.1
 * @design 含 import 指令的模块声明
 * @note 正向用例：验证含 import 的模块编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件 es2panda 无法解析 "@ohos.log"
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import { Log } from "@ohos.log"

function main(): void {
    Log.info("Module with import works")
}
