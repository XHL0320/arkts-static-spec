/**
 * @id SEM_15_11_01_101_FAIL_return_type_only_diff
 * @expect compile-fail
 * @section 15.11.1
 * @design 仅返回类型不同不构成重载
 * @note 反向用例
 */
function same(x: int): string { return "a"; }
function same(x: int): string { return "b"; }
function main(): void {}
