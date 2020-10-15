CUDA_VISIBLE_DEVICES=3,4,5  \
python -u run_maskBiLM.py --data_dir ../user_data/sample   \
        --src_file train_data_raw.json   \
        --model_type unilm  \
        --model_name_or_path ../user_data/pretrain/   \
        --output_dir ../out_model  \
        --log_dir qg/model/unilm/log \
        --max_seq_length 256   \
        --max_position_embeddings 512   \
        --do_train   \
        --do_lower_case   \
        --train_batch_size 70   \
        --model_recover_path ../user_data/pretrain/pytorch_model.bin \
        --num_train_epochs 25  \
        --mask_prob 0.5 \
        --max_pred 40 \
        --learning_rate 6e-5
