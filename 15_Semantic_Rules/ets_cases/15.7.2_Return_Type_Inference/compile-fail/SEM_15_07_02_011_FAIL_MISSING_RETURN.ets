/**
 * @id SEM_15_07_02_011_FAIL_MISSING_RETURN
 * @expect compile-fail
 * @section 15.7.2
 * @design 验证缺少 return 语句：非 void 函数缺少 return 应报错
 * @note 反向用例：int 返回类型函数没有 return 语句
 */
function getAnswer(): int { }
function main(): void {
    let v: int = getAnswer();
}
