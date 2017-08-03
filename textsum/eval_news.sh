../bazel-bin/textsum/seq2seq_attention \
    --mode=eval \
    --article_key=content \
    --abstract_key=title \
    --data_path=data/eval_newsir \
    --vocab_path=data/vocab_newsir \
    --log_root=log_newsir \
    --eval_dir=log_newsir/eval \
    --num_gpus=1

