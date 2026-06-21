/**
 * @id NAM_04_07_06_002_PASS_CLASS_METHOD_SHADOW
 * @expect compile-pass
 * @section 4.7.6
 * @design 类方法参数遮蔽全局变量
 * @note 正向用例：验证 class SomeClass { method(x: boolean) {} } 方法参数遮蔽编译通过（spec 4.7.6 行1344-1350）
 */
let x: number = 1
function foo(x: string) {
    // 'x' refers to the parameter and has type string
}
class SomeClass {
    method(x: boolean) {
        // 'x' refers to the method parameter and has type boolean
    }
}
x++  // 'x' refers to the global variable
