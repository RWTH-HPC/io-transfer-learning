#!/usr/bin/zsh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64G
#SBATCH --time=03:00:00
#SBATCH --gres=gpu:pascal:1
#SBATCH --partition=c16g
#SBATCH --job-name=BW_Filtered_CV
#SBATCH --account=thes1067

#SBATCH --output=Blue_Waters_CV_Filtered_NProcs_%J.log



echo "------------------------------------------------------------"
echo "SLURM JOB ID: $SLURM_JOBID"
echo "Running on nodes: $SLURM_NODELIST"
echo "------------------------------------------------------------"

module load cuda/11.6 cudnn/8.3.2

# echo "Running fold $1"
srun -n1 python WanbB_Blue_Waters_Cross_Validation_Filtered_by_NProcs.py
