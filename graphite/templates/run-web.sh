# {{ ansible_managed }}

# @see http://uwsgi-docs.readthedocs.org/en/latest/WSGIquickstart.html
# TODO use a ini config file to setup uwsgi options and then ini graphite with bin/uwsgi config_file.ini
{{ graphite_venv_path }}/bin/uwsgi --http :{{ graphite_uwsgi_port|default('8085') --master --processes 4 --home {{ graphite_venv_path }} --pythonpath {{ graphite_venv_path }}/webapp/graphite --wsgi-file {{ graphite_venv_path }}/conf/graphite.wsgi
