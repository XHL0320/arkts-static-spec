/**
 * @id NAM_04_04_004_PASS_MODULE_ACCESS
 * @expect compile-pass
 * @section 4.4
 * @design 模块名可访问
 * @note 正向用例：验证模块导出成员可访问
 */
namespace Utils {
    export function help(): void {}
}
Utils.help();
