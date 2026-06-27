/**
 * @id ANN_18_02_004_PASS_MULTIPLE_ANNOTATIONS
 * @expect compile-pass
 * @section 18.2
 * @design 验证多个注解可应用于同一声明
 * @note 正向用例：多个不同注解
 */
@interface Author {
  name: string
}
@interface Version {
  num: int
}

@Author({name: "Alice"})
@Version({num: 2})
class C {}
