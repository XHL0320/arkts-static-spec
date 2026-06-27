/*
 * NSM_13_04_1_003_RUNTIME_IMPORT_ALL_ACCESS
 * @id NSM_13_04_1_003_RUNTIME_IMPORT_ALL_ACCESS
 * @expect runtime
 * @section 13.4.1
 * @design import * as 运行时访问导出实体
 * @note 运行时用例：验证 import * as 运行时行为
 *       ⚠️ C 类：需要多文件构建系统支持，单文件 es2panda 无法解析 "@ohos.math"
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import * as Math from "@ohos.math"

function main(): int {
    let result: number = Math.abs(-5)
    console.log(result.toString())
    return result == 5 ? 0 : 1
}
