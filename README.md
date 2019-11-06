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
---
* `code/05 - DBSCAN for classification.ipynb`: An attempt at using DBSCAN for classification (bad idea; it ends up basically the same as a modified k-nearest neighbors).
* `code/03 - Testing the pipeline.ipynb`: Testing dimensionality reduction with ivis.
---
* `reports/csc830-proposal.*`: CSC830 proposal, describing the research problem of training with less data and going against literature recommendations.
