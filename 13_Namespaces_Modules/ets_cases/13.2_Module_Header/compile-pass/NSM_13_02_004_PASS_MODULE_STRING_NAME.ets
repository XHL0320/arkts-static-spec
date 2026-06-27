/*
 * NSM_13_02_004_PASS_MODULE_STRING_NAME
 * @id NSM_13_02_004_PASS_MODULE_STRING_NAME
 * @expect compile-pass
 * @section 13.2
 * @design moduleName 为 StringLiteral 的 module header 声明
 * @note 正向用例：验证 module StringLiteral name 编译通过
 *       ⚠️ C 类：es2panda 不支持 module header 语法
 *       分类：C 类（编译器实现限制 — 不支持 module header 语法）
 */
export module "com.example.app"

export function hello(): void {
    console.log("Module with string literal name")
}
