/**
 * @id SEM_15_11_8_098_FAIL_no_matching_overload
 * @expect compile-fail
 * @section 15.11.8
 * @design 无匹配重载
 * @note 反向用例
 */
function match(x: int): void {}
function match(x: string): void {}
function main(): void { match(true); }
