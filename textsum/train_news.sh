../bazel-bin/textsum/seq2seq_attention \
    --mode=train \
    --article_key=content \
    --abstract_key=title \
    --data_path=data/train_newsir \
    --vocab_path=data/vocab_newsir \
    --log_root=log_newsir \
    --train_dir=log_newsir/train \
    --num_gpus=1

