CUDA_VISIBLE_DEVICES=2,3,4,5  \
python -u run_maskLeftRightLM.py --data_dir ../data   \
        --src_file LR_dataset.json   \
        --model_type unilm  \
        --model_name_or_path ../user_data/pretrain/   \
        --output_dir ../LR_model  \
        --log_dir ../user_data/log \
        --max_seq_length 512   \
        --max_position_embeddings 512   \
        --do_train \
        --do_lower_case  \
        --train_batch_size 32   \
        --model_recover_path ../user_data/pretrain/pytorch_model.bin \
	--mask_prob 0.4 \
	--mask_source_words \
	--skipgram_size 4 \
	--skipgram_prb 0.2 \
	--warmup_proportion 0.05 \
        --num_train_epochs 30  \
        --mask_prob 0.5 \
        --max_pred 40 \
        --learning_rate 5e-5
