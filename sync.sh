# convert notebooks to html and copy to webspace
find . -name "*ipynb" | egrep -v '.ipynb_checkpoints' | xargs -I {} jupyter nbconvert --to html {}
rsync -azP lec/* aculotta@itcompsciweb1p01:~/public_html/nlp/
