/*
 * NSM_13_04_6_001_PASS_SEVERAL_BINDINGS_ONE_IMPORT
 * @id NSM_13_04_6_001_PASS_SEVERAL_BINDINGS_ONE_IMPORT
 * @expect compile-pass
 * @section 13.4.6
 * @design 同路径多条 import 绑定
 * @note 正向用例：验证 several bindings 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import { sin } from "@ohos.math"
import { cos } from "@ohos.math"

function main(): void {
    let x: number = sin(1.0)
    let y: number = cos(1.0)
}
