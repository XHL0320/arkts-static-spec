/*
 * NSM_13_09_001_PASS_MULTIFILE_SAME_HEADER
 * @id NSM_13_09_001_PASS_MULTIFILE_SAME_HEADER
 * @expect compile-pass
 * @section 13.9
 * @design 同 moduleHeader 的多文件模块
 * @note 正向用例：验证同 moduleHeader 多文件编译通过
 *       ⚠️ C 类：es2panda 不支持 module header 语法，且多文件模块需要构建系统
 *       分类：C 类（编译器实现限制 — 不支持 module header 语法 + 需要多文件构建）
 */
export module "x"

function foo(): void {}
function bar(): void {}

namespace NS1 {
    function baz(): void {}
}
