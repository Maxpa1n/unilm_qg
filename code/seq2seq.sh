CUDA_VISIBLE_DEVICES=2,3,4,5  \
python -u run_seq2seq.py --data_dir ../data   \
        --src_file test_1010.json   \
	--dev_file test_1010.json  \
        --model_type unilm  \
        --model_name_or_path ../user_data/pretrain/   \
        --output_dir ../out_model  \
        --log_dir qg/model/unilm/log \
        --max_seq_length 512   \
        --max_position_embeddings 512   \
        --do_train   \
        --do_lower_case   \
        --train_batch_size 38   \
	--dev_batch_size 20 \
        --model_recover_path ../out_model/model.18.bin \
        --num_train_epochs 30  \
        --mask_prob 0.2 \
        --max_pred 40 \
        --learning_rate 5e-5 \
	--label_smoothing 0.1
