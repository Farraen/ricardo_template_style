
{%- extends 'nbextensions.tpl' -%}


{%- block header -%}
{{ super() }}

{%- endblock header -%}

{% block any_cell %}

{%- if cell['metadata'].get('cell_style') == 'split' -%}
{{ super()[0:13] + "split_cell " + super()[13:]}}
{%- elif cell['metadata'].get('cell_style') == 'split_small' -%}
{{ super()[0:13] + "split_cell_small " + super()[13:]}}
{%- elif cell['metadata'].get('cell_style') == 'split_large' -%}
{{ super()[0:13] + "split_cell_large " + super()[13:]}}
{%- else -%}
{{ super() }}
{%- endif -%}

{% endblock any_cell %}