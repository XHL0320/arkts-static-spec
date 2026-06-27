/*
 * NSM_13_04_2_001_PASS_DEFAULT_IMPORT
 * @id NSM_13_04_2_001_PASS_DEFAULT_IMPORT
 * @expect compile-pass
 * @section 13.4.2
 * @design 单标识符 default import binding
 * @note 正向用例：验证 default import 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import DefaultExportedItem from "@ohos.someModule"

function main(): void {
    let v1 = new DefaultExportedItem()
}
