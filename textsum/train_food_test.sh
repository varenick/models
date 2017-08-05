../bazel-bin/textsum/seq2seq_attention \
    --mode=train \
    --article_key=text \
    --abstract_key=summary \
    --data_path=data/train_food_test_full \
    --vocab_path=data/vocab_food \
    --log_root=log_food_test \
    --train_dir=log_food_test/train \
    --num_gpus=2

