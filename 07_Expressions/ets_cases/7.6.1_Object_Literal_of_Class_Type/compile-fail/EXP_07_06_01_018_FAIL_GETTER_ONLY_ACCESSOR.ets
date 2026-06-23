/**
 * @id EXP_07_06_01_018_FAIL_GETTER_ONLY_ACCESSOR
 * @expect compile-fail
 * @section 7.6.1
 * @design getter-only 访问器（无 setter）用作对象字面量字段：{attr: 42} 应为编译时错误
 * @note 反向用例：验证只有 getter 无 setter 的访问器不能用作对象字面量字段
 */
class Err {
    private _attr: number = 0
    get attr(): number {
        return this._attr
    }
}
const b: Err = {attr: 42}
