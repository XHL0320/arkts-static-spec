/*
 * NSM_13_02_001_PASS_EXPORT_MODULE
 * @id NSM_13_02_001_PASS_EXPORT_MODULE
 * @expect compile-pass
 * @section 13.2
 * @design export module header 声明
 * @note 正向用例：验证 export module header 编译通过
 *       ⚠️ C 类：es2panda 不支持 module header 语法（Syntax error ESY0279: Cannot find name 'module'）
 *       分类：C 类（编译器实现限制 — 不支持 module header 语法）
 */
export module "MyModule"

export function greet(): void {
    console.log("Hello from exported module")
}
