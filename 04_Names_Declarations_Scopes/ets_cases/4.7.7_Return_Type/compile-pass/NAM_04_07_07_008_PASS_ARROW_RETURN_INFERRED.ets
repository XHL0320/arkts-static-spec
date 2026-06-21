/**
 * @id NAM_04_07_07_008_PASS_ARROW_RETURN_INFERRED
 * @expect compile-pass
 * @section 4.7.7
 * @design 箭头函数无返回类型标注空体（推断为void）
 * @note 正向用例：验证 let foo10 = () => {} 编译通过（spec 4.7.7 行1426）
 */
let foo10 = () => {}
