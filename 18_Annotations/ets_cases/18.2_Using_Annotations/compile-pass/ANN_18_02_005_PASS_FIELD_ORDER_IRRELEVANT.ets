/**
 * @id ANN_18_02_005_PASS_FIELD_ORDER_IRRELEVANT
 * @expect compile-pass
 * @section 18.2
 * @design 验证注解字段顺序无关
 * @note 正向用例：字段顺序不同
 */
@interface Point {
  x: int
  y: int
}

@Point({y: 10, x: 5})
class C {}
