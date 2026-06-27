/*
 * NSM_13_04_4_002_PASS_IMPORT_TYPE_MIXED
 * @id NSM_13_04_4_002_PASS_IMPORT_TYPE_MIXED
 * @expect compile-pass
 * @section 13.4.4
 * @design 混合导入 {Class1, type Class2} 语法
 * @note 正向用例：验证混合 import type 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件无法解析 "./mixed_module.ets"
 *       分类：C 类（编译器实现限制 — 需要辅助模块文件）
 */
import { Class1, type Class2 } from "./mixed_module.ets"

function main(): void {
    let c1: Class1 = new Class1()
    let c2: Class2 | null = null
}
