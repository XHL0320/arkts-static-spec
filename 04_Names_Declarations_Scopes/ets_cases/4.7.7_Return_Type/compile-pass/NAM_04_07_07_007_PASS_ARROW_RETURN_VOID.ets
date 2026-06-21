/**
 * @id NAM_04_07_07_007_PASS_ARROW_RETURN_VOID
 * @expect compile-pass
 * @section 4.7.7
 * @design 箭头函数声明void返回类型空体
 * @note 正向用例：验证 let foo8 = (): void => {} 编译通过（spec 4.7.7 行1420）
 */
let foo8 = (): void => {}
