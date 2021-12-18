#!bin/bash
set -x

time2=$(date "+%m%d%H%M")
echo $time2
# echo $1 >lastfm_$time2.txt
# decay=1e-4
# lr=0.001
# layer=1
# dropout=1
# keepprob=0.5
# seed=2020
# dateset=lastfm
# _dataset="$dataset"
# topks="[20]"
# recdim=64

# python main.py --decay=$decay --lr=$lr --layer=$layer --dropout=$dropout --keepprob=$keepprob --seed=$seed --dataset=$dataset --topks=$topks --recdim=$recdim > result/dataset_$time2.txt


# # python main.py --decay=1e-4 --lr=0.001 --layer=3 --seed=2020 --dataset="lastfm" --topks="[20]" --recdim=64


decay=1e-4 
lr=0.001 
layer=1 
seed=2020 
dataset=lastfm
topks=[20]
recdim=64
output=${dataset}_${layer}_${lr}_${decay}_${time2}.txt
echo $output
outputDir=result
`python main.py --decay=$decay --lr=$decay --layer=$layer --seed=$seed --dataset=$dataset --topks=$topks --recdim=$recdim > ${outputDir}/${output}`