#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=1,0  \
python decode_seq2seq.py --model_type unilm --model_name_or_path ../user_data/pretrain/ --model_recover_path ../out_model/model.21.bin --max_seq_length 512 --input_file ../data/juesai_1011.json  --output_file ../prediction_result/predict.json --do_lower_case --batch_size 25 --max_tgt_length 40 --beam_size 5
