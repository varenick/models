../bazel-bin/textsum/seq2seq_attention \
    --mode=decode \
    --article_key=content \
    --abstract_key=title \
    --data_path=data/decode_newsir \
    --vocab_path=data/vocab_newsir \
    --log_root=log_newsir \
    --decode_dir=log_newsir/decode \
    --num_gpus=1

