cd /root/data/dmlee2/summarization_tf1.14/models/official/transformer

 #Ensure that PYTHONPATH is correctly defined as described in
# https://github.com/tensorflow/models/tree/master/official#requirements
export PYTHONPATH="/root/data/dmlee2/summarization_tf1.14/models"
export CUDA_VISIBLE_DEVICES=0,1,2,3
# Export variables
PARAM_SET=base
DATA_DIR=$HOME/data/dmlee2/summarization_tf1.14/t2t_data
MODEL_DIR=$HOME/data/dmlee2/summarization_tf1.14/models/summ_512_128_lr0.15_noam_$PARAM_SET
VOCAB_FILE=$DATA_DIR/vocab.summarize_cnn_dailymail32k.32768.subwords
DECODE_VOCAB_FILE=$DATA_DIR/vocab_decode.subwords
# Download training/evaluation/test datasets
#python data_download.py --data_dir=$DATA_DIR

# Train the model for 10 epochs, and evaluate after every epoch.
python transformer_main.py --data_dir=$DATA_DIR --model_dir=$MODEL_DIR \
    --vocab_file=$VOCAB_FILE --param_set=$PARAM_SET \
    --train_steps=200000 \
    --steps_between_evals=1000 \
    --batch_size=16384 \
    --num_gpus=4
#    --hooks=loggingmetrichook
#    --bleu_source=$DATA_DIR/article_eval.txt --bleu_ref=$DATA_DIR/abstract_eval.txt

# Run during training in a separate process to get continuous updates,
# or after training is complete.
#tensorboard --logdir=$MODEL_DIR

# Translate some text using the trained model
#python translate.py --model_dir=$MODEL_DIR --vocab_file=$DECODE_VOCAB_FILE \
#    --param_set=$PARAM_SET --file=$DATA_DIR/decode_this.txt

# Compute model's BLEU score using the newstest2014 dataset.
#python translate.py --model_dir=$MODEL_DIR --vocab_file=$VOCAB_FILE \
#   --param_set=$PARAM_SET --file=$DATA_DIR/newstest2014.en --file_out=translation.en
#python compute_bleu.py --translation=translation.en --reference=$DATA_DIR/newstest2014.de

