CUDA_VISIBLE_DEVICES=0,1,2,3  \
python -u run_seq2seq.py --data_dir ../data   \
        --src_file round1_train_0907.json   \
	--dev_file split_data/test_1.json  \
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
        --model_recover_path ../LR_model/model.15.bin \
        --num_train_epochs 20  \
	--warmup_proportion 0.01 \
        --skipgram_size 5  \
        --skipgram_prb 0.2 \
	--mask_prob 0.25 \
        --max_pred 30 \
        --learning_rate 2e-5 \
	--label_smoothing 0.1 \

