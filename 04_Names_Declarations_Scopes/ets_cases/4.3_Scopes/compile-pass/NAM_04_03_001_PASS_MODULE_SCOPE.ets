/**
 * @id NAM_04_03_001_PASS_MODULE_SCOPE
 * @expect compile-pass
 * @section 4.3
 * @design 模块级作用域
 * @note 正向用例：验证模块级变量在函数内可访问
 */
let moduleVar: number = 10;
function readModuleVar(): number {
    return moduleVar;
}
