# build_files.sh
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.8 get-pip.py
python3.8 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# make migrations
python3.8 manage.py migrate 
python3.8 manage.py collectstatic