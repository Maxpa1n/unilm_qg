CUDA_VISIBLE_DEVICES=0,1,2,3  \
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
        --train_batch_size 38   \
        --model_recover_path ../user_data/pretrain/pytorch_model.bin \
	--mask_prob 0.4 \
	--mask_source_words \
	--warmup_proportion 0.01 \
        --num_train_epochs 40  \
	--skipgram_size 4 \
	--skipgram_prb 0.25 \
        --max_pred 30 \
	--mask_whole_word \
        --learning_rate 3e-5
