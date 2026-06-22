/**
 * @id SEM_15_11_2_098
 * @expect compile-fail
 * @section 15.11.2
 * @design 参数类型不可赋值
 * @note 反向用例
 */
function bad(x: int): void {}
function main(): void { bad(true); }
