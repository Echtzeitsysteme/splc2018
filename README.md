# Optimal Reconfiguration of Self-Adaptive Systems Based on Performance-Influence Models

This repository contains supplementary material for the paper **Optimal Reconfiguration of Self-Adaptive Systems Based on Performance-Influence Models.**
The implementation of our approach for the *Adaptive Wireless Sensor Networks* case study is called *Coala - Context-Aware Topology Control Adaptation.*

* *coala* contains binary that was used to produce the evaluation results. Please have a look at *coala_run.sample.bash* for further instructions.
* *eval_dataset* contains the raw simulation output that was used to produce the evaluation plots
* *eval_plots* contains the plots shown in the paper + some additional plots
* *training_dataset* contains the raw simulation output that was used for training with SPLConqueror
* *traininig_splc* contains the training configuration for SPLConqueror (*scripts*) and the resulting performance-influence models (*logs*). 
  * The file *machineLearnSettings.txt* specifies the machine-learning settings.
  * We used revision '8ea8ea2203955562205d74aa68452cd69a12afce' of https://github.com/se-passau/SPLConqueror for learning.
  * If you want to reproduce the machine-learning results, you need to replace 'TODO_ADJUST_TO_SUPERSCRIPT_PARENT_FOLDER' with the absolute path to *training_splc/scripts* in all '*.a' files.
