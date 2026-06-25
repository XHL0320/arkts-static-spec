/**
 * @id ITF_10_04_01_003_PASS_GETTER_SETTER
 * @expect compile-pass
 * @section 10.4.1
 * @design getter/setter 形式
 * @note 正向用例：验证 getter+setter 访问器声明
 */
interface Style {
    get color(): string;
    set color(s: string);
}
