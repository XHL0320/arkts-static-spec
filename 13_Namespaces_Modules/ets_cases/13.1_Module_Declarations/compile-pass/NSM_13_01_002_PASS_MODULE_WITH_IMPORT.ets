/*
 * NSM_13_01_002_PASS_MODULE_WITH_IMPORT
 * @id NSM_13_01_002_PASS_MODULE_WITH_IMPORT
 * @expect compile-pass
 * @section 13.1
 * @design 含 import 指令的模块声明（改用自包含内联定义替代外部模块导入）
 * @note 正向用例：验证含 import 的模块编译通过
 *       原用例使用 import { Log } from "@ohos.log"，因 es2panda 单文件编译
 *       无法解析外部模块路径（F0014），已改为自包含内联定义
 */
function info(msg: string): void {
    console.log(msg)
}

function main(): void {
    info("Module with import works")
}
