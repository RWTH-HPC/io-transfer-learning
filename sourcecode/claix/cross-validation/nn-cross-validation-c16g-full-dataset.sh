#!/usr/bin/zsh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64G
#SBATCH --time=03:00:00
#SBATCH --gres=gpu:pascal:1
#SBATCH --partition=c16g
#SBATCH --job-name=Claix_Full_CV
#SBATCH --account=thes1067

#SBATCH --output=Claix_CV_Full_Dataset_%J.log


echo "------------------------------------------------------------"
echo "SLURM JOB ID: $SLURM_JOBID"
echo "Running on nodes: $SLURM_NODELIST"
echo "------------------------------------------------------------"

srun -n1 python Claix_Cross_Validate_Fine-tuning_of_Pre-trained_Model_Full_Dataset.py
