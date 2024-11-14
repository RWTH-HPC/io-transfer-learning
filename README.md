# I/O Bandwidth Prediction using Transfer Learning

Directory structure: 

```
+-- sourcecode
|   +-- blue_waters
|   |   +-- cross-validation
|   |   |   +-- Cross_Validation_Baseline_Random_Model_One_Fold.py
|   |   |   +-- cross-validation-baseline-random-model.sh
|   |   |   +-- Cross_Validation_Filtered_by_NProcs.py
|   |   |   +-- cross-validation-one-fold-per-job-filtered-nprocs.sh
|   |   |   +-- cross-validation-one-fold-per-job.sh
|   |   |   +-- Cross_Validation_Run_One_Fold_Full_Dataset.py
|   |   |   +-- Split_Cross-Val_Folds_by_Seed.py
|   |   +-- darshan_files_parsing
|   |   |   +-- Blue_Waters_CSV_Merging_POSIX.py
|   |   |   +-- blue-waters-darshan-files-parsing-home-posix-batch.sh
|   |   |   +-- blue-waters-darshan-files-parsing-thes-work-posix-batch.sh
|   |   |   +-- blue-waters-darshan-files-parsing-user-work-posix-batch.sh
|   |   |   +-- Blue_Waters_Data_Files_Counter.py
|   |   |   +-- Blue_Waters_Data_Parsing_all_dirs_at_once_POSIX.py
|   |   |   +-- blue-waters-merge-csv.sh
|   |   |   +-- parallel_unzip.sh
|   |   |   +-- Unzip_Blue_Water_Files.py
|   |   +-- SmoothL1Loss_Bigger_Batch_Size_Filtered_by_NProcs.py
|   |   +-- SmoothL1Loss_Bigger_Batch_Size_Full_Dataset.py
|   +-- claix
|   |   +-- augmented_data
|   |   |   +-- Claix_Fine-tune_Pre-trained_Model_Augmented_Data.ipynb
|   |   |   +-- Claix_Generate_Augmented_Data.ipynb
|   |   +-- Claix_Fine-tune_Pre-trained_Model_Filtered_NProcs.ipynb
|   |   +-- Claix_Fine-tune_Pre-trained_Model_Full.ipynb
|   |   +-- cross-validation
|   |   |   +-- Claix_Cross_Validate_Baseline_Random_Model.py
|   |   |   +-- Claix_Cross_Validate_Fine-tuning_of_Pre-trained_Model_Filtered_NProcs.py
|   |   |   +-- Claix_Cross_Validate_Fine-tuning_of_Pre-trained_Model_Full_Dataset.py
|   |   |   +-- Claix_Cross_Validate_Training_of_Model_From_Scratch.py
|   |   |   +-- nn-cross-validation-c16g-filtered-nprocs.sh
|   |   |   +-- nn-cross-validation-c16g-full-dataset.sh
|   |   |   +-- nn-from-scratch-cross-validation.sh
|   |   +-- darshan_files_parsing
|   |   |   +-- Claix_CSV_Merging_POSIX.py
|   |   |   +-- Claix_Darshan_Data_Files_Counter.py
|   |   |   +-- Claix_Data_Parsing_all_dirs_at_once_POSIX.py
|   |   +-- feature_importance_attribution
|   |   |   +-- Claix_Evaluate_Pre-trained_Model_Filtered_Nprocs_all_attribution_algorithms.ipynb
|   |   |   +-- Claix_Evaluate_Pre-trained_Model_Full_all_attribution_algorithms.ipynb
|   +-- visualization
|   |   +-- data
|   |   +-- paper_visualization.ipynb
```

## General instruction 

- All Darshan logs are not stored in this repository. To reproduce this work, users need to download the Blue Waters Darshan logs and also generate their own Darshan logs for the target cluster
- The scripts are divided into building the model using Blue Waters dataset and target cluster (CLAIX) dataset. Cross validation scripts are also available for the base model and the transfer learning model
- The directories' addresses needs to be adjusted to the users' own directories 

## Reproducing the work

The detailed work can be read in this Master's thesis: 

D. Povaliaiev, “Transfer learning workflow for I/O bandwidth prediction,” M.S. thesis, RWTH Aachen University, Aachen, 2023. https://publications.rwth-aachen.de/record/958007.
