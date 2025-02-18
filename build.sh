#!/user/bin/env bash
# Exit on error


set -O errexit


#Modify this line os needed for your package manager (pip, poetry, etc)

pip install -r requirements.txt


#convert static asset files
pyhton manage.py collectstatic --no-input


# Apply any outstanding database migrations
python manage.py migrate