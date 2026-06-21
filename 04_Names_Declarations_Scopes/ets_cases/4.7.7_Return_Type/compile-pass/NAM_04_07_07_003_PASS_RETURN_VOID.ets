/**
 * @id NAM_04_07_011_PASS_RETURN_VOID
 * @expect compile-pass
 * @section 4.7.7
 * @design void返回类型
 * @note 正向用例：验证 void 返回类型
 */
function fooVoid(): void {}
function fooVoid2(): void { return; }
