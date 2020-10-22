#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0,1,2,3  \
python decode_seq2seq.py --model_type unilm --model_name_or_path ../user_data/pretrain/ --model_recover_path ../out_model/model.16.200.bin --max_seq_length 512 --input_file ../data/split_data/test_1.json  --output_file ../prediction_result/predict.json --do_lower_case --batch_size 50 --max_tgt_length 30 --beam_size 5
