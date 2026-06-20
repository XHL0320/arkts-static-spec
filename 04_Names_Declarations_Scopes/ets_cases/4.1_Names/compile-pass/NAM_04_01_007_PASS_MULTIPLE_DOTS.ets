/**
 * @id NAM_04_01_007_PASS_MULTIPLE_DOTS
 * @expect compile-pass
 * @section 4.1
 * @design 多层限定名
 * @note 正向用例：验证多层 . 分隔的限定名
 */
namespace Outer {
    export namespace Inner {
        export let x: number = 5;
    }
}
let val: number = Outer.Inner.x;
