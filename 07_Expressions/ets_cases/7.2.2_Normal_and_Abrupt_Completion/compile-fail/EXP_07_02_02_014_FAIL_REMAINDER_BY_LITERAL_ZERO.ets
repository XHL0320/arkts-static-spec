/**
 * @id EXP_07_02_02_014_FAIL_REMAINDER_BY_LITERAL_ZERO
 * @expect compile-fail
 * @section 7.2.2
 * @design 验证整数取余字面量零在编译时报错（反向用例）
 * @note 反向用例：spec 规定整数取余零如编译时检测到则产生编译时错误
 */
function main(): void {
  let a: int = 10 % 0;
}
