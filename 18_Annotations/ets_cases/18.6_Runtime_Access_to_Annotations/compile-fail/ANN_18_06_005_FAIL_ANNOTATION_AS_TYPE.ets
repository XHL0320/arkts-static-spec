/**
 * @id ANN_18_06_005_FAIL_ANNOTATION_AS_TYPE
 * @expect compile-fail
 * @section 18.6
 * @design 验证注解不能直接用作变量类型（当前限制）
 * @note 反向用例：注解作为类型使用
 */
@Retention("RUNTIME")
@interface MyAnno {
  name: string
}

@MyAnno({name: "test"})
class A {}

let x: MyAnno = getAnnotation(A, MyAnno)
