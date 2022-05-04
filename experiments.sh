# GPU 0

GPU=0

if [ $GPU == $1 ]; then

echo "EXECUTING GPU $GPU CODE"

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.8_al-0.2\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.8\
    --adapt_lambda 0.2

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.8_al-0.1\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.8\
    --adapt_lambda 0.1

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.8_al-0.05\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.8\
    --adapt_lambda 0.05

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.8_al-0.3\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.8\
    --adapt_lambda 0.3

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.8_al-0.01\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.8\
    --adapt_lambda 0.01

fi

# GPU 2

GPU=2

if [ $GPU == $1 ]; then

echo "EXECUTING GPU $GPU CODE"

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_gen\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.4_al-0.1\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.4\
    --adapt_lambda 0.1

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.1_al-0.1\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.1\
    --adapt_lambda 0.1

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.05_al-0.1\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.05\
    --adapt_lambda 0.1

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.01_al-0.1\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.01\
    --adapt_lambda 0.1

fi

# GPU 1

GPU=1

if [ $GPU == $1 ]; then

echo "EXECUTING GPU $GPU CODE"

fi

#############################################################################

# TEST

#GPU = 2

#CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    #--data_dir=./domainbed/data/\
    #--hparams='{"resnet18": 1}'\
    #--output_dir=./output_test\
    #--algorithm CORAL\
    #--dataset PACS\
    #--test_env 3\
    #--task domain_adaptation\
    #--uda_holdout_fraction 0.8\
    #--adapt_lambda 1.0


