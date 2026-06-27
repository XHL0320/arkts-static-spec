/*
 * NSM_13_02_002_PASS_DECLARE_MODULE
 * @id NSM_13_02_002_PASS_DECLARE_MODULE
 * @expect compile-pass
 * @section 13.2
 * @design declare module header 声明
 * @note 正向用例：验证 declare module header 编译通过
 *       ⚠️ C 类：es2panda 不支持 module header 语法
 *       分类：C 类（编译器实现限制 — 不支持 module header 语法）
 */
declare module "AmbientModule"

declare function ambientFoo(): void
