{% macro mask_email(column_name) -%}

{%- if target.name == 'dev' -%}

regexp_replace(
    {{ column_name }},
    '(?<=.)[^@](?=[^@]*?[^@]\.)',
    '*',
    'g'
)

{%- else -%}

{{ column_name }}

{%- endif -%}

{%- endmacro %}