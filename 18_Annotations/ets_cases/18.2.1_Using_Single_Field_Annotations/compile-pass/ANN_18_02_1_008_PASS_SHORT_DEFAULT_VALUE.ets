/**
 * @id ANN_18_02_1_008_PASS_SHORT_DEFAULT_VALUE
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证单字段有默认值时简写或省略均可
 * @note 正向用例：@timeout(30) 和 @timeout() 均可
 */
@interface timeout {
  seconds: int = 10
}

@timeout(30)
class C1 {}

@timeout()
class C2 {}

@timeout
class C3 {}
