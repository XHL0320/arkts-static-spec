/*
 * NSM_13_04_3_002_PASS_SELECTIVE_IMPORT_ALIAS
 * @id NSM_13_04_3_002_PASS_SELECTIVE_IMPORT_ALIAS
 * @expect compile-pass
 * @section 13.4.3
 * @design {identifier as alias} 别名导入，原名不可访问
 * @note 正向用例：验证 selective import alias 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import { sin as Sine } from "@ohos.math"

function main(): void {
    let x: number = Sine(1.0)
}
