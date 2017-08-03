../bazel-bin/textsum/seq2seq_attention \
    --mode=decode \
    --article_key=text \
    --abstract_key=summary \
    --data_path=data/decode_food \
    --vocab_path=data/vocab_food \
    --log_root=log_food \
    --num_gpus=1 \
    --decode_dir=log_food/decode 

