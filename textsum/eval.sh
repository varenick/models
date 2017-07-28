../bazel-bin/textsum/seq2seq_attention \
    --mode=eval \
    --article_key=article \
    --abstract_key=abstract \
    --data_path=data/eval_food \
    --vocab_path=data/vocab_food \
    --log_root=log_food \
    --eval_dir=log_food/eval \
    --num_gpus=1

