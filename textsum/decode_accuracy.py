from nltk import Counter

log_dir = 'log_food'
log_count = '1501916394'
correct_count = 0
total_count = 0
unk_count = 0
empty_count = 0
with open(log_dir + '/decode/decode' + log_count) as decode_file:
    with open(log_dir + '/decode/ref' + log_count) as ref_file:
        for decode_line, ref_line in zip(decode_file, ref_file):
            decode_answer = decode_line.split('=')[1]
            ref_answer = ref_line.split('=')[1]
            decode_tokens = decode_answer.split()
            ref_tokens = ref_answer.split()
            #correct_count += sum([decode_tokens[i] == ref_tokens[i] for i in range(min(len(decode_tokens), len(ref_tokens)))])
            decode_tokens_counter = Counter(decode_tokens)
            ref_tokens_counter = Counter(ref_tokens)
            for token in ref_tokens_counter.keys():
                if token in decode_tokens_counter:
                    correct_count += min(ref_tokens_counter[token], decode_tokens_counter[token])
            total_count += max(len(decode_tokens), len(ref_tokens))
            unk_count += sum([token == '<UNK>' for token in decode_tokens])
            empty_count += (decode_tokens == [])
print('Accuracy:', correct_count / total_count)
print('UNK portion:', unk_count / total_count)
print('Empty string portion:', empty_count / total_count)
