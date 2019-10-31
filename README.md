# Files

Below is a description of all the files in this repository. Files in the same experiment group are grouped together below.  

* `01 - Lower data in DL.ipynb`: Elementary tries on using DBSCAN to reduce data and feed it to a neural net.
* `02 - Full experiments.ipynb`: Elaborate experiments based on the above concept.
* `data-orig.pkl`: Pickled unscaled data. Contains full and subset of data.
* `data.pkl`: Pickled normalized data. Contains full and subset of data.
* `ScottKnott.Rmd`: An R notebook to compute Scott-Knott results of the above experiments using the `ScottKnottESD` package.
* `ScottKnott.nb.html`: The HTML version of the above notebook.
* `scott-knott-results.png`: The results of the above.
* `scott-knott.py`: Dr. Menzies' Scott-Knott code.
* `scott-knott-results.txt`: Results from the above.
* `sk1.csv`: Input to Dr. Menzies' code. Results of the experiments. sknew refers to the experiment with parabolic activation.
  
* `03 - Non-monotonic activations.ipynb`: Tests with parabolic activation function.
* `sk-results-parabola`: Scott-Knott on the experiments above + the parabola experiments.
* `data-03.pkl`: The data generated in the 03 - notebook. This isn't really used anywhere; it's just saved.
  
* `04 - Dimensionality reduction pipeline on ant data.ipynb`: Experiments on the ant defect prediction dataset.
* `05 - Full experiments on ant data.ipynb`: Extensive experimentation on the ant data (software defect prediction). This is not yet in the repo.
* `parse_nb_cell_output.js`: Used to parse the output of the Jupyter notebook output cells and generate the csv files (that have been put in the `experiment_results/` folder), which will be used as input for Dr. Menzies' Scott-Knott test code.
* `get_completed_configs.js`: Used to find completed configs from the output of the Jupyter notebook. When the Colab runtime died, the code was simply re-run after the completed configs were added to the list in the config-yielding function.
