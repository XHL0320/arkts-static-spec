/*
 * NSM_13_04_1_002_PASS_IMPORT_ALL_QUALIFIED_ACCESS
 * @id NSM_13_04_1_002_PASS_IMPORT_ALL_QUALIFIED_ACCESS
 * @expect compile-pass
 * @section 13.4.1
 * @design A.name 访问 import * as 导入的导出实体
 * @note 正向用例：验证 A.name 访问导出实体编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件 es2panda 无法解析 "@ohos.util"
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import * as Utils from "@ohos.util"

function main(): void {
    Utils.someFunction()
}
