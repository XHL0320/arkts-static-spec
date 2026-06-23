# 10 Interfaces — ets_cases 目录说明

## 目录结构

```
ets_cases/
├── 10.1_Interface_Declarations/         [7 用例]  接口声明
│   ├── compile-pass/                    [5]  基础/泛型/extends/默认方法
│   ├── compile-fail/                    [1]  不能 new
│   └── runtime/                         [1]  接口多态运行时
│
├── 10.2_Superinterfaces_Subinterfaces/  [8 用例]  超接口与子接口
│   ├── compile-pass/                    [3]  单/多/多层继承
│   ├── compile-fail/                    [4]  非接口、循环、自继承
│   └── runtime/                         [1]  多层继承运行时
│
├── 10.3_Interface_Members/              [6 用例]  接口成员
│   ├── compile-pass/                    [3]  含 ISS-10-01 GAP 标注
│   ├── compile-fail/                    [2]  重复成员 ✅ / ISS-10-02 ❌
│   └── runtime/                         [1]  方法成员运行时
│
├── 10.4_Interface_Properties/           [4 用例]  接口属性（父节）
│   ├── compile-pass/                    [1]  接口属性声明
│   ├── compile-fail/                    [2]  getter-only 写、setter-only 读
│   └── runtime/                         [1]  接口属性运行时
│
├── 10.4.1_Required_Interface_Properties/ [8 用例]  必需接口属性
│   ├── compile-pass/                    [6]  readonly/rw、getter/setter、字段等价
│   ├── compile-fail/                    [1]  必需属性未实现
│   └── runtime/                         [1]  必需属性运行时
│
├── 10.4.2_Optional_Interface_Properties/ [6 用例]  可选接口属性
│   ├── compile-pass/                    [3]  可选属性、undefined、等价性
│   ├── compile-fail/                    [1]  可选属性未赋值
│   └── runtime/                         [2]  可选属性运行时、默认 setter
│
├── 10.5_Interface_Method_Declarations/  [10 用例]  接口方法声明
│   ├── compile-pass/                    [6]  抽象方法、类实现接口
│   ├── compile-fail/                    [2]  缺失实现、签名不匹配
│   └── runtime/                         [2]  接口实现、属性运行时
│
└── 10.6_Interface_Inheritance/          [10 用例]  接口继承
    ├── compile-pass/                    [5]  继承链、菱形、extends+implements
    ├── compile-fail/                    [4]  继承属性读写约束、多继承读写约束
    └── runtime/                         [1]  继承链运行时
```

## 统计

| 子节 | PASS | FAIL | RT | 合计 |
|------|:--:|:--:|:--:|:--:|
| 10.1 Interface Declarations | 5 | 1 | 1 | 7 |
| 10.2 Superinterfaces | 3 | 4 | 1 | 8 |
| 10.3 Interface Members | 3 | 2 | 1 | 6 |
| 10.4 Interface Properties | 1 | 2 | 1 | 4 |
| 10.4.1 Required Interface Properties | 6 | 1 | 1 | 8 |
| 10.4.2 Optional Interface Properties | 3 | 1 | 2 | 6 |
| 10.5 Interface Method Declarations | 6 | 2 | 2 | 10 |
| 10.6 Interface Inheritance | 5 | 4 | 1 | 10 |
| **总计** | **32** | **17** | **10** | **59** |

## 已知信息

- **1 个 GAP**：ISS-10-02 — Object 方法返回值冲突规则（§10.3）编译器未实现
- **命名前缀**：全部 `SEM_` 前缀
- **命名格式**：`ITF_10_{XX}[_{ZZ}]_{NNN}_{TYPE}_{DESCRIPTION}.ets`
- **空文件/异常目录**：无
- 全部 8 个子章节均包含三类测试用例
