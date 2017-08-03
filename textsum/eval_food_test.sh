../bazel-bin/textsum/seq2seq_attention \
    --mode=eval \
    --article_key=text \
    --abstract_key=summary \
    --data_path=data/eval_food_test \
    --vocab_path=data/vocab_food \
    --log_root=log_food_test \
    --eval_dir=log_food_test/eval \
    --num_gpus=1

