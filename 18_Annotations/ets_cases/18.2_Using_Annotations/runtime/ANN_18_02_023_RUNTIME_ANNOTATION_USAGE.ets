/**
 * @id ANN_18_02_023_RUNTIME_ANNOTATION_USAGE
 * @expect runtime
 * @section 18.2
 * @design 验证注解使用可在运行时正常编译执行
 * @note 运行时用例：多种注解用法在运行时编译和执行
 */
@interface Author {
  name: string
}
@interface Version {
  num: int
}

@Author({name: "Alice"})
@Version({num: 2})
class MyClass {}

function main(): void {
  console.log("verified")
}
