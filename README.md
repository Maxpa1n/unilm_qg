
2020 阿里云天池大数据竞赛-中医药文献问题生成挑战赛  
复赛（12/868）0.6181  
特点：**简单**、**bert_base参数量**、**有改进空间**  
main.sh 文件为解码预测文件 需修改输入的文件 并设置输出的文件位置  

需将数据处理为
user_data/sample/test.json 格式

user_data/pretrain 下为预训练的UNILM模型

本项目模型结构及策略基于：[Uniﬁed Language Model Pre-training for Natural Language Understanding and Generation](https://arxiv.org/pdf/1905.03197.pdf)

本项目预训练模型基于：[Unilm](https://github.com/YunwenTechnology/Unilm)

依赖包：
python3.6
transformers           2.6.0
