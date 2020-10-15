# coding:utf8
from rouge import Rouge
import json
with open('test_1010.json','r',encoding='utf8') as f_t:
    tgt_json = json.load(f_t)
    question = []
    answer = []
    for i in tgt_json:
        text = i['text']
        for j in i['annotations']:
            q = ' '.join(list(j['Q']))
            a = ' '.join(list(j['A']))
            question.append({'text':text,'Q':q,'A':a})
            

with open('../../prediction_result/predict.json', 'r', encoding='utf8') as f1:
    f2 = []
    for k,i in enumerate(f1):
        if len(i)>2:
            f2.append(i[:-1])
        else:
            f2.append(' '.join(list(question[k]['A'])))
rouge = Rouge()
rouge_r = []
rouge_p = []
rouge_l = []
for i, j in zip(f2, question):
 
    rouge_score = rouge.get_scores(i, j['Q'])
    k = rouge_score[0]["rouge-l"]
    # rouge_1.append(rouge_score[0]["rouge-1"])
    # rouge_2.append(rouge_score[0]["rouge-2"])
    rouge_l.append(k['f'])
    rouge_r.append(k['r'])
    rouge_p.append(k['p'])
    
    print('txt:',j['text'])
    print('ans:',j['A'])
    print('-')
    print('tgt: ',j['Q'])
    print('prd: ',i)
    print(k)
    print('--------------------------------')


# print(sum(rouge_1)/len(rouge_1))
# print(sum(rouge_2)/len(rouge_2))
print('f:',sum(rouge_l)/len(rouge_l))
print('p:',sum(rouge_p)/len(rouge_p))
print('r:',sum(rouge_r)/len(rouge_r))
