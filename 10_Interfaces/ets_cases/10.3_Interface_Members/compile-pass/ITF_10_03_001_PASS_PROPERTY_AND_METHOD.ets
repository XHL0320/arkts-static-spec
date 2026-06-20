/**
 * @id ITF_10_03_001_PASS_PROPERTY_AND_METHOD
 * @expect compile-pass
 * @section 10.3
 * @design 属性和方法成员
 * @note 正向用例：验证接口包含属性和方法
 */
interface Entity {
    id: number;
    getName(): string;
}
