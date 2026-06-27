/*
 * NSM_13_04_5_003_RUNTIME_IMPORT_PATH
 * @id NSM_13_04_5_003_RUNTIME_IMPORT_PATH
 * @expect runtime
 * @section 13.4.5
 * @design 导入路径运行时解析
 * @note 运行时用例：验证 import path 运行时行为
 *       ⚠️ C 类：需要多文件构建系统支持，单文件 es2panda 无法解析 "@ohos.log"
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import { console } from "@ohos.log"

function main(): int {
    console.log("Import path runtime OK")
    return 0
}
