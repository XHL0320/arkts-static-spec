/*
 * NSM_13_07_4_002_PASS_RE_EXPORT_SELECTIVE
 * @id NSM_13_07_4_002_PASS_RE_EXPORT_SELECTIVE
 * @expect compile-pass
 * @section 13.7.4
 * @design export { d1, d2 as d3 } from "path" — selective re-export
 * @note 正向用例：验证选择性 re-export 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件无法解析 "@ohos.math"
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
export { sin, cos as cosine } from "@ohos.math"
