/**
 * @id CLS_09_01_008_FAIL_CLASS_NAME_KEYWORD
 * @expect compile-fail
 * @section 9.1
 * @design 类名使用关键字导致编译错误
 * @note 反向用例：验证类名不能使用 int 等关键字
 */
class int {
  val: number = 0
}

