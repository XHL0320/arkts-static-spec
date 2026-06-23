/**
 * @id SEM_15_07_02_010_FAIL_RETURN_MISMATCH
 * @expect compile-fail
 * @section 15.7.2
 * @design 验证返回类型不匹配拒绝：声明的 int 返回 string 应报错
 * @note 反向用例：实际返回类型与声明不匹配时编译拒绝
 */
function getValue(): int { return "hello"; }
function main(): void {
    let v: int = getValue();
}
