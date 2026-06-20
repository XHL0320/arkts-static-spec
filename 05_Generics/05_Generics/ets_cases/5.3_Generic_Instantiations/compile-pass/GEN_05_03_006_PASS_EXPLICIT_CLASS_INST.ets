/**
 * @id GEN_05_03_006_PASS_EXPLICIT_CLASS_INST
 * @expect compile-pass
 * @section 5.3
 * @design 类明确实例化
 * @note 正向用例：验证类的明确泛型实例化
 */
class G<T> {}
let x: G<number>;
