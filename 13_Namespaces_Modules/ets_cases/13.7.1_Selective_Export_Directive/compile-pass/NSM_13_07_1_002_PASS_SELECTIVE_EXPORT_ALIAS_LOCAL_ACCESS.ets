/*
 * NSM_13_07_1_002_PASS_SELECTIVE_EXPORT_ALIAS_LOCAL_ACCESS
 * @id NSM_13_07_1_002_PASS_SELECTIVE_EXPORT_ALIAS_LOCAL_ACCESS
 * @expect compile-pass
 * @section 13.7.1
 * @design Spec 规定：export { d2 as d3 } 后，d2 在同一模块内仍可访问，
 *       但在其他模块导入时仅 d3 可访问，d2 不可访问。
 *       单文件测试只能验证同一模块内 d2 仍可用（正向行为）
 * @note 正向用例：验证 export alias 后原名在同一模块内仍可访问
 *       跨模块验证需要多文件测试（已标注为多文件测试项）
 *       原 FAIL 用例设计有误：spec 说的是导入模块中不可访问，而非声明模块中不可访问
 *       A 类修复：从 FAIL 改为 PASS
 */
function d2(): void {}
export { d2 as d3 }

function main(): void {
    d2() // OK: in the same module, 'd2' is still accessible after alias export
    console.log("alias local access OK")
}
