/*
 * NSM_13_04_4_001_PASS_IMPORT_TYPE
 * @id NSM_13_04_4_001_PASS_IMPORT_TYPE
 * @expect compile-pass
 * @section 13.4.4
 * @design import type 仅为 TS 语法兼容
 * @note 正向用例：验证 import type 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件无法解析 "./types_module.ets"
 *       分类：C 类（编译器实现限制 — 需要辅助模块文件）
 */
import type { SomeClass } from "./types_module.ets"

function main(): void {
    let c: SomeClass | null = null
}
