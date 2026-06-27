/*
 * NSM_13_04_3_001_PASS_SELECTIVE_IMPORT
 * @id NSM_13_04_3_001_PASS_SELECTIVE_IMPORT
 * @expect compile-pass
 * @section 13.4.3
 * @design {identifier} 选择性导入
 * @note 正向用例：验证 selective import 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import { sin } from "@ohos.math"

function main(): void {
    let x: number = sin(1.0)
}
