/**
 * @id EXP2_17_12_013_FAIL_DUPLICATE_DEFAULT
 * @expect compile-fail
 * @section 17.12
 * @design 接口中重复声明同名的默认方法（相同签名），应产生编译错误
 * @note 反向用例：同一接口中不允许重复声明同签名的默认方法
 */
interface IDuplicate {
  process(): void {
    console.log("first definition")
  }

  // 重复声明：相同签名的方法已存在
  process(): void {
    console.log("second definition")
  }
}
