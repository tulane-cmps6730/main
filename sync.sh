# convert notebooks to html and copy to webspace
find . -name "*ipynb" | egrep -v '.ipynb_checkpoints' | xargs -I {} jupyter nbconvert --to html {}
rsync -azP lec/* aculotta@cs.tulane.edu:~/public_html/nlp/
