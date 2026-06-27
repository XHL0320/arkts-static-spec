/*
 * NSM_13_02_005_RUNTIME_MODULE_HEADER
 * @id NSM_13_02_005_RUNTIME_MODULE_HEADER
 * @expect runtime
 * @section 13.2
 * @design module header 定义模块名使其可被 import
 * @note 运行时用例：验证 module header 运行时行为
 *       ⚠️ C 类：es2panda 不支持 module header 语法，编译失败
 *       分类：C 类（编译器实现限制 — 不支持 module header 语法）
 */
export module "RuntimeMod"

export let x: int = 100

function main(): int {
    console.log(x.toString())
    return x == 100 ? 0 : 1
}
