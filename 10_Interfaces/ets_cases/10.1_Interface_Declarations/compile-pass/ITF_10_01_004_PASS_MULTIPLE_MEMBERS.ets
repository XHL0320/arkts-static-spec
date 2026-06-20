/**
 * @id ITF_10_01_004_PASS_MULTIPLE_MEMBERS
 * @expect compile-pass
 * @section 10.1
 * @design 接口多成员
 * @note 正向用例：验证接口声明多个属性和方法
 */
interface Config {
    readonly version: string;
    mode: string;
    load(path: string): void;
    save(): boolean;
}
