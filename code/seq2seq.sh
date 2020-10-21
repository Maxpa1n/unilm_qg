CUDA_VISIBLE_DEVICES=0,1,2,3  \
python -u run_seq2seq.py --data_dir ../data   \
        --src_file split_data/train_2.json   \
	--dev_file split_data/test_2.json  \
        --model_type unilm  \
        --model_name_or_path ../user_data/pretrain/   \
        --output_dir ../out_model  \
        --log_dir qg/model/unilm/log \
        --max_seq_length 512   \
        --max_position_embeddings 512   \
        --do_train   \
        --do_lower_case   \
        --train_batch_size 42   \
	--dev_batch_size 50 \
        --model_recover_path ../user_data/pretrain/pytorch_model.bin \
        --num_train_epochs 10  \
	--warmup_proportion 0.1 \
        --skipgram_size 4  \
        --skipgram_prb 0.3 \
	--mask_prob 0.2 \
        --max_pred 35 \
        --learning_rate 1e-5 \
	--label_smoothing 0.1 \

