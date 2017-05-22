# 展开因子对于程序时空性能的研究

.
├── codeGeneration
│   ├── main.py
│   └── result
├── dhrystone-2.1
│   ├── Makefile
│   ├── RATIONALE
│   ├── README
│   ├── README.RER
│   ├── bymanuf
│   ├── byperf
│   ├── cc_dry2
│   ├── cc_dry2reg
│   ├── clarify.doc
│   ├── dhry-2.1.p
│   ├── dhry.h
│   ├── dhry.p
│   ├── dhry_1.c
│   ├── dhry_1.s
│   ├── dhry_2.c
│   ├── dhry_2.s
│   ├── dhry_c.dif
│   ├── doit
│   ├── gcc_dry2reg
│   ├── pure2_1.dif
│   ├── results
│   └── submit.frm
├── test.c
├── test.s
├── test_0_with_notes.s
├── test_original.s
└── test_unroll.s

- ./ 保存测试程序的源程序、原始汇编程序、使用编译器循环展开吼的汇编程序
- dhrystone-2/ 存储了一个整数brenchmark程序
- codegeneration/main.py 可以生成不同循环因子的test程序
- codegeneration/result 存储实验结果

By Ywt.
