# Files

Below is a description of all the files in this repository. Files in the same experiment group are grouped together below.  

* `code/01 - Lower data in DL.ipynb`: Elementary tries on using DBSCAN to reduce data and feed it to a neural net.
* `code/02 - Full experiments.ipynb`: Elaborate experiments based on the above concept.
* `pickled/data-orig.pkl`: Pickled unscaled data. Contains full and subset of data.
* `pickled/data.pkl`: Pickled normalized data. Contains full and subset of data.
* `reports/scott-knott-results/ScottKnott.Rmd`: An R notebook to compute Scott-Knott results of the above experiments using the `ScottKnottESD` package.
* `reports/scott-knott-results/ScottKnott.nb.html`: The HTML version of the above notebook.
* `reports/scott-knott-results/scott-knott-results.png`: The results of the above.
* `scott-knott.py`: Dr. Menzies' Scott-Knott code.
* `reports/scott-knott-results/scott-knott-results.txt`: Results from the above.
* `sk1.csv`: Input to Dr. Menzies' code. Results of the experiments. sknew refers to the experiment with parabolic activation.  
---  
* `code/03 - Non-monotonic activations.ipynb`: Tests with parabolic activation function.
* `reports/scott-knott-results/sk-results-parabola`: Scott-Knott on the experiments above + the parabola experiments.
* `pickled/data-03.pkl`: The data generated in the 03 - notebook. This isn't really used anywhere; it's just saved.  
---
* `code/04 - Dimensionality reduction pipeline on ant data.ipynb`: Experiments on the ant defect prediction dataset.
* `code/05 - Full experiments on ant data.ipynb`: Extensive experimentation on the ant data (software defect prediction). This is not yet in the repo.
* `code/parse_nb_cell_output.js`: Used to parse the output of the Jupyter notebook output cells and generate the csv files (that have been put in the `experiment_results/` folder), which will be used as input for Dr. Menzies' Scott-Knott test code.
* `code/get_completed_configs.js`: Used to find completed configs from the output of the Jupyter notebook. When the Colab runtime died, the code was simply re-run after the completed configs were added to the list in the config-yielding function.
* `code/get_best_models.sh`: Runs through the Scott-Knott results to find model configurations that were in top-k of both precision and recall, then prints out their Scott-Knott results.
* `code/best_results_helper.py`: A helper Pythonf ile for the above script.
* `analysis.ods`: An analysis showing recommendations from this work vs. literature recommendations.
* `experiment_results/recommended_{precision,recall,runtimes}.csv`: The metrics for the recommended models.
---
* `code/05 - DBSCAN for classification.ipynb`: An attempt at using DBSCAN for classification (bad idea; it ends up basically the same as a modified k-nearest neighbors).
* `code/03 - Testing the pipeline.ipynb`: Testing dimensionality reduction with ivis.
---
* `reports/csc830-proposal.*`: CSC830 proposal, describing the research problem of training with less data and going against literature recommendations.
---
* `code/06 - New ant experiments.ipynb`: Code for the revised experiments that trained on ant 1.5 and tested on ant 1.6.
* `experiment_results/final-ant/{f1,recall,precision,runtime}.txt`: The metrics for the new experiments that were trained on ant 1.5 and tested on ant 1.6.
* `experiment_results/final-ant/{scalability-, results-}parts/part*.txt`: The code output for the experiments and the scalability tests.
* `code/06 - Scatterplot of medians of results.ipynb`: Scatterplot of precision vs recall, colored by the Scott-Knott rank of the F1 scores.
* `code/python_to_js.sh`: A helper that converts Python dicts to JSON-compliant strings.
* `code/07 - Running scalability tests.ipynb`: Code to run scalability tests on the models.
* `experiment_results/final-ant/selected.txt`: The models selected for further tests--these will be tested for scalability and on other datasets. To get these, the `code/get_best_models.sh` code was run. Then, the models with their 90%ile above 41% F-1, 70%ile above 39%, and 50%ile above 35% F-1 score were kept.
* `code/08 - Analyse scalability results.ipynb`: Generate scalability plots.
---
* `experiment_results/final-ant/transfer-experiments/*`: Runs of the 28 top models from ant 1.5->1.6 on other datasets.
* `code/11 - ant experiments 1.6-1.7`: Poorly named; this contains all the transfer experiments.
* `experiment_results/final-ant/analysis.xlsx`: All the results in one place. Values within parentheses are 70%ile - 50%ile.
---
* `code/09 - Naive Bayes on Tan's AST data.ipynb`: Implied by the file name. This is for reproducing the paper's results.
* `code/10 - Reproducing Tan's results on PROMISE features.ipynb`: Checking how to reproduce the paper's results on PROMISE data.
