function mkproj
	conda create -y -n $argv python=3.10
    conda activate $argv
    conda install -y -c conda-forge cookiecutter pandas numpy matplotlib altair scikit-learn
    pip install streamlit checkpointer
    cookiecutter https://github.com/drivendata/cookiecutter-data-science project_name=$argv repo_name=$argv author_name='setseed42' open_source_license='No license file' python_interpreter='python3'
    cd $argv
    code .
end
