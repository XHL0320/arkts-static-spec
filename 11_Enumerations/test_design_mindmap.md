# 11 Enumerations Test Design Mindmap

## 覆盖汇总

- 总用例数：42（19P + 14F + 9R）
- 覆盖章节：11_Enumerations、11.1、11.2、11.3、11.4

## Subtopics

- 11_Enumerations
  - enum 基础声明
  - 空 enum
  - 重复值允许 / 重复成员名失败
  - const enum 当前不支持
- 11.1 Enumeration Base Type
  - int/string 基类型推断
  - 混合类型推断失败
  - 未初始化成员导致 int 推断
- 11.2 Enumeration with Explicit Base Type
  - double / long / byte / short 显式基类型
  - 非 numeric/string 显式基类型失败
  - 非整数基类型成员缺初始化失败
- 11.3 Initialization of Enumeration Members
  - 全省略自动递增
  - 显式初始化 + 后续自动递增
  - 非常量初始化后成员缺初始化失败
- 11.4 Enumeration Methods
  - compile-pass
    - values/getValueOf/fromValue 返回类型
    - toString/valueOf/getName 返回类型
  - compile-fail
    - getValueOf 参数非 string
    - fromValue 参数与枚举基类型不匹配
  - runtime
    - values()
    - getValueOf()
    - fromValue()
    - index by value
    - same value last wins
    - string enum methods
    - nonexistent value/name throws
