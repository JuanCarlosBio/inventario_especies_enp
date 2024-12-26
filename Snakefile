rule targets:
    input:
        "html_enp/reserva_natural_integral/C-01_inagua.html",
        "html_enp/reserva_natural_integral/C-02_barranco_oscuro.html",
        "html_enp/reserva_natural_especial/C-03_el_brezal.html",
        "html_enp/reserva_natural_especial/C-04_azuaje.html",
        "html_enp/reserva_natural_especial/C-05_los_tilos_de_moya.html",
        "html_enp/reserva_natural_especial/C-06_los_marteles.html",
        "html_enp/reserva_natural_especial/C-07_las_dunas_de_maspalomas.html",
        "html_enp/reserva_natural_especial/C-08_gui_gui.html",
        "html_enp/parque_natural/C-09_tamadaba.html",
        "html_enp/parque_natural/C-10_pilancones.html",
        "html_enp/parque_rural/C-11_nublo.html",
        "html_enp/parque_rural/C-12_doramas.html",
        "html_enp/monumento_natural/C-13_amagro.html",
        "html_enp/monumento_natural/C-14_bandama.html",
        "html_enp/monumento_natural/C-15_montanion_negro.html",
        "html_enp/monumento_natural/C-16_roque_aguayro.html",
        "html_enp/monumento_natural/C-17_tauro.html",
        "html_enp/monumento_natural/C-18_arinaga.html",
        "html_enp/monumento_natural/C-19_barranco_guayadeque.html",
        "html_enp/monumento_natural/C-20_riscos_tirajana.html",
        "html_enp/monumento_natural/C-21_roque_nublo.html",
        "html_enp/paisaje_protegido/C-22_la_isleta.html",
        "html_enp/paisaje_protegido/C-23_pino_santo.html",
        "html_enp/paisaje_protegido/C-24_tafira.html",
        "html_enp/paisaje_protegido/C-25_las_cumbres.html",
        "html_enp/paisaje_protegido/C-26_lomo_magullo.html",
        "html_enp/paisaje_protegido/C-27_fataga.html",
        "html_enp/paisaje_protegido/C-28_montania_de_aguimes.html",
        "html_enp/sitio_de_interes_cientifico/C-29_jinamar.html",
        "html_enp/sitio_de_interes_cientifico/C-30_tufia.html",
        "html_enp/sitio_de_interes_cientifico/C-31_roque_de_gando.html",
        "html_enp/sitio_de_interes_cientifico/C-32_juncalillo_del_sur.html",
        "html_enp/sitio_de_interes_cientifico/C-33_barranco_del_draguillo.html",
        "index.html"


rule inagua:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_integral/C-01_inagua",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_integral/C-01_inagua.html"
    params:
        numero_enp = 0
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule barranco_oscuro:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_integral/C-02_barranco_oscuro",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_integral/C-02_barranco_oscuro.html"
    params:
        numero_enp = 1
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule el_brezal:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_especial/C-03_el_brezal",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_especial/C-03_el_brezal.html"
    params:
        numero_enp = 2
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule azuaje:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_especial/C-04_azuaje",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_especial/C-04_azuaje.html"
    params:
        numero_enp = 3
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule los_tilos_de_moya:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_especial/C-05_los_tilos_de_moya",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_especial/C-05_los_tilos_de_moya.html"
    params:
        numero_enp = 4
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule los_marteles:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_especial/C-06_los_marteles",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_especial/C-06_los_marteles.html"
    params:
        numero_enp = 5
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule las_dunas_de_maspalomas:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_especial/C-07_las_dunas_de_maspalomas",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_especial/C-07_las_dunas_de_maspalomas.html"
    params:
        numero_enp = 6
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule gui_gui:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/reserva_natural_especial/C-08_gui_gui",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/reserva_natural_especial/C-08_gui_gui.html"
    params:
        numero_enp = 7
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule tamadaba:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/parque_natural/C-09_tamadaba",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/parque_natural/C-09_tamadaba.html"
    params:
        numero_enp = 8
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule pilancones:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/parque_natural/C-10_pilancones",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/parque_natural/C-10_pilancones.html"
    params:
        numero_enp = 9
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule nublo:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/parque_rural/C-11_nublo",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/parque_rural/C-11_nublo.html"
    params:
        numero_enp = 10
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule doramas:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/parque_rural/C-12_doramas",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/parque_rural/C-12_doramas.html"
    params:
        numero_enp = 11
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule amagro:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-13_amagro",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-13_amagro.html"
    params:
        numero_enp = 12
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule bandama:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-14_bandama",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-14_bandama.html"
    params:
        numero_enp = 13
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule montanion_negro:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-15_montanion_negro",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-15_montanion_negro.html"
    params:
        numero_enp = 14
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule roque_aguayro:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-16_roque_aguayro",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-16_roque_aguayro.html"
    params:
        numero_enp = 15
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule tauro:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-17_tauro",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-17_tauro.html"
    params:
        numero_enp = 16
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule arinaga:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-18_arinaga",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-18_arinaga.html"
    params:
        numero_enp = 17
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule barranco_guayadeque:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-19_barranco_guayadeque",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-19_barranco_guayadeque.html"
    params:
        numero_enp = 18
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule riscos_tirajana:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-20_riscos_tirajana",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-20_riscos_tirajana.html"
    params:
        numero_enp = 19
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule roque_nublo:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/monumento_natural/C-21_roque_nublo",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/monumento_natural/C-21_roque_nublo.html"
    params:
        numero_enp = 20
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule la_isleta:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/paisaje_protegido/C-22_la_isleta",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/paisaje_protegido/C-22_la_isleta.html"
    params:
        numero_enp = 21
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule pino_santo:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/paisaje_protegido/C-23_pino_santo",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/paisaje_protegido/C-23_pino_santo.html"
    params:
        numero_enp = 22
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule tafira:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/paisaje_protegido/C-24_tafira",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/paisaje_protegido/C-24_tafira.html"
    params:
        numero_enp = 23
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule las_cumbres:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/paisaje_protegido/C-25_las_cumbres",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/paisaje_protegido/C-25_las_cumbres.html"
    params:
        numero_enp = 24
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule lomo_magullo:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/paisaje_protegido/C-26_lomo_magullo",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/paisaje_protegido/C-26_lomo_magullo.html"
    params:
        numero_enp = 25
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule fataga:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/paisaje_protegido/C-27_fataga",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/paisaje_protegido/C-27_fataga.html"
    params:
        numero_enp = 26
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule montania_de_aguimes:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/paisaje_protegido/C-28_montania_de_aguimes",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/paisaje_protegido/C-28_montania_de_aguimes.html"
    params:
        numero_enp = 27
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule jinamar:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/sitio_de_interes_cientifico/C-29_jinamar",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/sitio_de_interes_cientifico/C-29_jinamar.html"
    params:
        numero_enp = 28
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule tufia:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/sitio_de_interes_cientifico/C-30_tufia",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/sitio_de_interes_cientifico/C-30_tufia.html"
    params:
        numero_enp = 29
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule roque_de_gando:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/sitio_de_interes_cientifico/C-31_roque_de_gando",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/sitio_de_interes_cientifico/C-31_roque_de_gando.html"
    params:
        numero_enp = 30
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule juncalillo_del_sur:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/sitio_de_interes_cientifico/C-32_juncalillo_del_sur",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/sitio_de_interes_cientifico/C-32_juncalillo_del_sur.html"
    params:
        numero_enp = 31
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """

rule barranco_del_draguillo:
    input:
        metadatos = "metadata/metadatos_espacios.csv",
        data      = "ENP/sitio_de_interes_cientifico/C-33_barranco_del_draguillo",
        notebook  = "python/enp_analysis.ipynb"
    output:
        "html_enp/sitio_de_interes_cientifico/C-33_barranco_del_draguillo.html"
    params:
        numero_enp = 32
    conda:
        "conda_env.yml"
    shell:
        """
        MY_VARIABLE={params.numero_enp} jupyter nbconvert \
            --to html \
            --execute \
            --no-input \
            {input.notebook}
        mv python/enp_analysis.html {output}
        """ 

rule index:
    input:
        python_script = "python/index.py",
        html_files = [
            "html_enp/reserva_natural_integral/C-01_inagua.html",
            "html_enp/reserva_natural_integral/C-02_barranco_oscuro.html",
            "html_enp/reserva_natural_especial/C-03_el_brezal.html",
            "html_enp/reserva_natural_especial/C-04_azuaje.html",
            "html_enp/reserva_natural_especial/C-05_los_tilos_de_moya.html",
            "html_enp/reserva_natural_especial/C-06_los_marteles.html",
            "html_enp/reserva_natural_especial/C-07_las_dunas_de_maspalomas.html",
            "html_enp/reserva_natural_especial/C-08_gui_gui.html",
            "html_enp/parque_natural/C-09_tamadaba.html",
            "html_enp/parque_natural/C-10_pilancones.html",
            "html_enp/parque_rural/C-11_nublo.html",
            "html_enp/parque_rural/C-12_doramas.html",
            "html_enp/monumento_natural/C-13_amagro.html",
            "html_enp/monumento_natural/C-14_bandama.html",
            "html_enp/monumento_natural/C-15_montanion_negro.html",
            "html_enp/monumento_natural/C-16_roque_aguayro.html",
            "html_enp/monumento_natural/C-17_tauro.html",
            "html_enp/monumento_natural/C-18_arinaga.html",
            "html_enp/monumento_natural/C-19_barranco_guayadeque.html",
            "html_enp/monumento_natural/C-20_riscos_tirajana.html",
            "html_enp/monumento_natural/C-21_roque_nublo.html",
            "html_enp/paisaje_protegido/C-22_la_isleta.html",
            "html_enp/paisaje_protegido/C-23_pino_santo.html",
            "html_enp/paisaje_protegido/C-24_tafira.html",
            "html_enp/paisaje_protegido/C-25_las_cumbres.html",
            "html_enp/paisaje_protegido/C-27_fataga.html",
            "html_enp/paisaje_protegido/C-28_montania_de_aguimes.html",
            "html_enp/sitio_de_interes_cientifico/C-29_jinamar.html",
            "html_enp/sitio_de_interes_cientifico/C-30_tufia.html",
            "html_enp/sitio_de_interes_cientifico/C-31_roque_de_gando.html",
            "html_enp/sitio_de_interes_cientifico/C-32_juncalillo_del_sur.html",
            "html_enp/sitio_de_interes_cientifico/C-33_barranco_del_draguillo.html"
        ]
    output:
        "index.html"
    conda:
        "conda_env.yml"
    shell:
        "python {input.python_script}"