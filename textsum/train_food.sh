../bazel-bin/textsum/seq2seq_attention \
    --mode=train \
    --article_key=text \
    --abstract_key=summary \
    --data_path=data/train_food_short \
    --vocab_path=data/vocab_food \
    --log_root=log_food \
    --train_dir=log_food/train \
    --num_gpus=2

