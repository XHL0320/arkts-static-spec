/**
 * @id CLS_09_04_006_FAIL_METHOD_METHOD_SAME_NAME
 * @expect compile-fail
 * @section 9.4
 * @design 同scope中同签名方法同名导致编译错误
 * @note 反向用例：spec规定同scope方法同名报错
 */
class DupMethod {
  compute(): int { return 1 }
  compute(): int { return 2 }
}
