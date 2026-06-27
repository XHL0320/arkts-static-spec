/*
 * NSM_13_04_2_002_PASS_DEFAULT_IMPORT_SELECTIVE
 * @id NSM_13_04_2_002_PASS_DEFAULT_IMPORT_SELECTIVE
 * @expect compile-pass
 * @section 13.4.2
 * @design {default as Name} selective import
 * @note 正向用例：验证 default selective import 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import { default as DefaultExportedItemNewName } from "@ohos.someModule"

function main(): void {
    let v2 = new DefaultExportedItemNewName()
}
