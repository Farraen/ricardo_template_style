
{%- extends 'nbextensions.tpl' -%}

{% block any_cell %}

{%- if cell['metadata'].get('cell_style') == 'split' -%}
{{ super()[0:13] + "split_cell " + super()[13:]}}
{%- else -%}
{{ super() }}
{%- endif -%}
{% endblock any_cell %}

<!DOCTYPE html>
<html>
<script>
<style type="text/css">
.split_cell {
  float: left !important;
  width: 50%  !important;
}
</style>
</script>