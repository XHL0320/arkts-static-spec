/**
 * @id NAM_04_07_07_001_PASS_RETURN_INFERRED_BODY
 * @expect compile-pass
 * @section 4.7.7
 * @design 无标注时从函数体推导返回值类型
 * @note 正向用例：验证函数体返回值类型推导（§4.7 行 1384）
 */
function giveNumber(): number { return 42; }
function giveString(): string { return "hello"; }
