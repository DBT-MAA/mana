{%- set COUNTRY = 'USA','UK','GERMANY','canada','japan' -%}
{%- for COUNTRY in COUNTRY -%}
my country is : {{ COUNTRY | capitalize }}
{% endfor %}

{% set my_score=67 %}
{%- set passing_score=60 -%}
{%- if my_score > passing_score -%}
you have pass the exame
{%- else -%}
you have fail
{%- endif -%}
