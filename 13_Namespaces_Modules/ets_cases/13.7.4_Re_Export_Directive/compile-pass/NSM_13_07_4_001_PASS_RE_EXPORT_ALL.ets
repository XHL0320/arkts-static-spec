/*
 * NSM_13_07_4_001_PASS_RE_EXPORT_ALL
 * @id NSM_13_07_4_001_PASS_RE_EXPORT_ALL
 * @expect compile-pass
 * @section 13.7.4
 * @design export * from "path" — re-export 所有导出声明
 * @note 正向用例：验证 re-export * 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件无法解析 "@ohos.math"
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
export * from "@ohos.math"
