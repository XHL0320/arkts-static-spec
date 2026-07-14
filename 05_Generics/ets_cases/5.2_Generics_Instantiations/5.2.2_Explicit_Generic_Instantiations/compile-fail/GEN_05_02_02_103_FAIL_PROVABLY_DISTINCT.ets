/**
 * @id GEN_05_02_02_103_FAIL_PROVABLY_DISTINCT
 * @expect compile-fail
 * @section 5.2.2
 * @design provably distinct泛型实例化不兼容
 * @note 反向用例：验证不同类型参数的同一泛型实例化provably distinct，不可互相赋值
 */
class G<T> {}
let x: G<number>;
let y: G<string> = x;
