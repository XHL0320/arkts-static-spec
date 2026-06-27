/**
 * @id ANN_18_02_007_PASS_DEFAULT_VALUE_USED
 * @expect compile-pass
 * @section 18.2
 * @design 验证字段使用默认值时可以不传
 * @note 正向用例：revision 省略时使用默认值 1
 */
@interface Config {
  name: string
  revision: int = 1
}

@Config({name: "test"})
class C {}
