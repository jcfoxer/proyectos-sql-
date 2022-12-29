PGDMP                         w         
   BDHOSPITAL    11.3    11.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16399 
   BDHOSPITAL    DATABASE     �   CREATE DATABASE "BDHOSPITAL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE "BDHOSPITAL";
             postgres    false            �            1259    16420    consulta    TABLE     �   CREATE TABLE public.consulta (
    cmp character(4) NOT NULL,
    id_pac character(4) NOT NULL,
    fecha date NOT NULL,
    hora time without time zone
);
    DROP TABLE public.consulta;
       public         postgres    false            �            1259    16400    consultorio    TABLE     p   CREATE TABLE public.consultorio (
    numeroc character(4) NOT NULL,
    piso integer,
    capacidad integer
);
    DROP TABLE public.consultorio;
       public         postgres    false            �            1259    16405    medico    TABLE     �   CREATE TABLE public.medico (
    cmp character(4) NOT NULL,
    nombre character varying(20),
    edad integer,
    ciudad character varying(20),
    especialidad character varying(20),
    numeroc character(4)
);
    DROP TABLE public.medico;
       public         postgres    false            �            1259    16415    paciente    TABLE     �   CREATE TABLE public.paciente (
    id_pac character(4) NOT NULL,
    nombre character varying(20),
    edad integer,
    ciudad character varying(20),
    enfermedad character varying(50)
);
    DROP TABLE public.paciente;
       public         postgres    false                      0    16420    consulta 
   TABLE DATA               <   COPY public.consulta (cmp, id_pac, fecha, hora) FROM stdin;
    public       postgres    false    199                    0    16400    consultorio 
   TABLE DATA               ?   COPY public.consultorio (numeroc, piso, capacidad) FROM stdin;
    public       postgres    false    196   \                 0    16405    medico 
   TABLE DATA               R   COPY public.medico (cmp, nombre, edad, ciudad, especialidad, numeroc) FROM stdin;
    public       postgres    false    197   �                 0    16415    paciente 
   TABLE DATA               L   COPY public.paciente (id_pac, nombre, edad, ciudad, enfermedad) FROM stdin;
    public       postgres    false    198   E       �
           2606    16409    medico primarykey_cmp 
   CONSTRAINT     T   ALTER TABLE ONLY public.medico
    ADD CONSTRAINT primarykey_cmp PRIMARY KEY (cmp);
 ?   ALTER TABLE ONLY public.medico DROP CONSTRAINT primarykey_cmp;
       public         postgres    false    197            �
           2606    16424    consulta primarykey_id_consulta 
   CONSTRAINT     m   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT primarykey_id_consulta PRIMARY KEY (cmp, id_pac, fecha);
 I   ALTER TABLE ONLY public.consulta DROP CONSTRAINT primarykey_id_consulta;
       public         postgres    false    199    199    199            �
           2606    16419    paciente primarykey_id_pac 
   CONSTRAINT     \   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT primarykey_id_pac PRIMARY KEY (id_pac);
 D   ALTER TABLE ONLY public.paciente DROP CONSTRAINT primarykey_id_pac;
       public         postgres    false    198            �
           2606    16404    consultorio primarykey_numeroc 
   CONSTRAINT     a   ALTER TABLE ONLY public.consultorio
    ADD CONSTRAINT primarykey_numeroc PRIMARY KEY (numeroc);
 H   ALTER TABLE ONLY public.consultorio DROP CONSTRAINT primarykey_numeroc;
       public         postgres    false    196            �
           2606    16425    consulta foreignkey_consultacmp    FK CONSTRAINT     |   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT foreignkey_consultacmp FOREIGN KEY (cmp) REFERENCES public.medico(cmp);
 I   ALTER TABLE ONLY public.consulta DROP CONSTRAINT foreignkey_consultacmp;
       public       postgres    false    199    197    2698            �
           2606    16430 !   consulta foreignkey_consultaidpac    FK CONSTRAINT     �   ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT foreignkey_consultaidpac FOREIGN KEY (id_pac) REFERENCES public.paciente(id_pac);
 K   ALTER TABLE ONLY public.consulta DROP CONSTRAINT foreignkey_consultaidpac;
       public       postgres    false    198    2700    199            �
           2606    16410    medico foreignkey_numeroc    FK CONSTRAINT     �   ALTER TABLE ONLY public.medico
    ADD CONSTRAINT foreignkey_numeroc FOREIGN KEY (numeroc) REFERENCES public.consultorio(numeroc);
 C   ALTER TABLE ONLY public.medico DROP CONSTRAINT foreignkey_numeroc;
       public       postgres    false    196    2696    197               @   x��500�000�4204�54�50�40�20 "._�P�Y�� !k�5DȚs�Bec���� @�         5   x�s640�4�4�r6402̸���"F�� ���2Js��F`F� ��         �   x�m�M
�0������L�,���p3�C����m��.���w@�����āw�zy���_�CZ�Z���
�5��A'��P�A,Ҿ�Ī˫#��er��+�<o���M�GBO�|�ϯ=
�mT�K�:�j>)�^}=�            x�%�1�0���9�O�Җ �"*ё�	X
u�KNO�������.a KB�z�CLVv��-�&�	@�bЬ�O�D��l-��+hx���:�ҫγ��=�vJo�Y7�89羪K)�     