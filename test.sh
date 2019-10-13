#! /bin/bash 
BASE_DIR="/root/workspace"
#  --file=$BASE_DIR/finished_files/article_eval.txt
#  --model_dir=$BASE_DIR/models/official/transformer/output/base/3e4_step32k_b36_v2 \
export CUDA_VISIBLE_DEVICES=4,5
#--model_dir=/root/workspace/models/official/transformer/output/base/3e4_step32k_b36_v2 \
python translate.py \
  --param_set=base \
  --model_dir=$BASE_DIR/models/official/transformer/output/base/0.0001_step200k_b12_512_100_scope_decodeasnamescope \
  --bert_config_file=$BASE_DIR/uncased_L-12_H-768_A-12/bert_config.json \
  --vocab_file=$BASE_DIR/uncased_L-12_H-768_A-12/vocab.txt \
  --text="the only thing crazier than a guy in snowbound massachusetts boxing up the powdery white stuff and offering it for sale online ? people are actually buying it . for $ 89 , self-styled entrepreneur kyle waring will ship you 6 pounds of boston-area snow in an insulated styrofoam box -- enough for 10 to 15 snowballs , he says . but not if you live in new england or surrounding states . `` we will not ship snow to any states in the northeast ! '' says waring 's website , shipsnowyo.com . `` we 're in the business of expunging snow ! '' his website and social media accounts claim to have filled more than 133 orders for snow -- more than 30 on tuesday alone , his busiest day yet . with more than 45 total inches , boston has set a record this winter for the snowiest month in its history . most residents see the huge piles of snow choking their yards and sidewalks as a nuisance , but waring saw an opportunity . according to boston.com , it all started a few weeks ago , when waring and his wife were shoveling deep snow from their yard in manchester-by-the-sea , a coastal suburb north of boston . he joked about shipping the stuff to friends and family in warmer states , and an idea was born . his business slogan : `` our nightmare is your dream ! '' at first , shipsnowyo sold snow packed into empty 16.9-ounce water bottles for $ 19.99 , but the snow usually melted before it reached its destination . so this week , waring began shipping larger amounts in the styrofoam cubes , which he promises will arrive anywhere in the u.s. in less than 20 hours . he also has begun selling a 10-pound box of snow for $ 119 . many of his customers appear to be companies in warm-weather states who are buying the snow as a gag , he said . whether waring can sustain his gimmicky venture into the spring remains to be seen . but he has no shortage of product . `` at this rate , it 's going to be july until the snow melts , '' he told boston.com . `` but i 've thought about taking this idea and running with it for other seasonal items . maybe i 'll ship some fall foliage . ''"


