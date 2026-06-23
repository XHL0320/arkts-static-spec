/**
 * @id EXP2_17_14_004_PASS_NESTED_TRAILING
 * @expect compile-pass
 * @section 17.14
 * @design 外层和内层函数调用都使用 trailing lambda 语法，形成嵌套 trailing lambda
 * @note 正向用例：验证嵌套 trailing lambda 语法编译通过
 */
function outer(callback: () => void): void {
  callback()
}

function inner(callback: () => void): void {
  callback()
}

outer() {
  inner() {
    console.log("nested trailing")
  }
}
