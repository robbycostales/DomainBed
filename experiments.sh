# GPU 0

GPU = 0

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-0.8_al-1.0\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.8\
    --adapt_lambda 1.0

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_pacs_coral_t3_adapt_hf-1.0_al-1.0\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 1.0\
    --adapt_lambda 1.0

# GPU 1

#GPU = 1

#CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    #--data_dir=./domainbed/data/\
    #--hparams='{"resnet18": 1}'\
    #--output_dir=./output_pacs_coral_t3_adapt_hf-1.0_al-0.5\
    #--algorithm CORAL\
    #--dataset PACS\
    #--test_env 3\
    #--task domain_adaptation\
    #--uda_holdout_fraction 1.0\
    #--adapt_lambda 0.5

#CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    #--data_dir=./domainbed/data/\
    #--hparams='{"resnet18": 1}'\
    #--output_dir=./output_pacs_coral_t3_adapt_hf-1.0_al-0.1\
    #--algorithm CORAL\
    #--dataset PACS\
    #--test_env 3\
    #--task domain_adaptation\
    #--uda_holdout_fraction 1.0\
    #--adapt_lambda 0.1

# GPU 2

#GPU = 2

#CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    #--data_dir=./domainbed/data/\
    #--hparams='{"resnet18": 1}'\
    #--output_dir=./output_pacs_coral_t3_adapt_hf-1.0_al-0.0\
    #--algorithm CORAL\
    #--dataset PACS\
    #--test_env 3\
    #--task domain_adaptation\
    #--uda_holdout_fraction 1.0\
    #--adapt_lambda 0.0

#CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    #--data_dir=./domainbed/data/\
    #--hparams='{"resnet18": 1}'\
    #--output_dir=./output_pacs_coral_t3_gen\
    #--algorithm CORAL\
    #--dataset PACS\
    #--test_env 3

#############################################################################

# TEST

GPU = 2

CUDA_VISIBLE_DEVICES=$GPU python3 -m domainbed.scripts.train \
    --data_dir=./domainbed/data/\
    --hparams='{"resnet18": 1}'\
    --output_dir=./output_test\
    --algorithm CORAL\
    --dataset PACS\
    --test_env 3\
    --task domain_adaptation\
    --uda_holdout_fraction 0.8\
    --adapt_lambda 1.0


