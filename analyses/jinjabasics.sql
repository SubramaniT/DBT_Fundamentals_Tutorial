{#
{% set my_cool_string = '1  ' %}
select {{ my_cool_string }}

{% set varno = 100 %}
{{ varno }}

{% set myanimals =['dog','cat','lion','tiger']  %}

{{ myanimals }}

{{ myanimals[0]   }}
{{ myanimals[1] }}

{% for animal in myanimals %}
listing from the arrays {{ animal }}
{% endfor %}

#}

{#
{% set temperature =145 %}
{% if temperature < 65 %}
    temp is cool
{% else %}
    Temp is go ing to be hot
{% endif %}
#}

{#
{% set foods =['carrot','tomato','apple','beet','onion','dfdf']%}

{% for food in foods %}
    {% if food == 'apple' %}
        {% set food_type='Fruit' %}
    {% else %}
        {% set food_type ='vegetable'%}
    {% endif %}
    The food {{ food }} is of type {{ food_type }}
{% endfor %}
#}

{% set websters_dic = {
    'word':'data',
    'speech_part':'nound',
    'definition':'if you know you know'
}
%}

{{ websters_dic }}
{{ websters_dic['word']}}
{{ websters_dic['speech_part'] }}
{{ websters_dic['definition'] }}
test
{{ websters_dic[1] }}

