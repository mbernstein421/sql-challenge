PGDMP     &    .                {           EmployeeSQL    14.8    14.8 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16765    EmployeeSQL    DATABASE     q   CREATE DATABASE "EmployeeSQL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "EmployeeSQL";
                postgres    false            �            1259    16784    departments    TABLE     v   CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    16789    dept_emp    TABLE     p   CREATE TABLE public.dept_emp (
    emp_no character varying NOT NULL,
    dept_no character varying NOT NULL
);
    DROP TABLE public.dept_emp;
       public         heap    postgres    false            �            1259    16799    dept_manager    TABLE     t   CREATE TABLE public.dept_manager (
    dept_no character varying NOT NULL,
    emp_no character varying NOT NULL
);
     DROP TABLE public.dept_manager;
       public         heap    postgres    false            �            1259    16804 	   employees    TABLE     A  CREATE TABLE public.employees (
    emp_no character varying NOT NULL,
    emp_title character varying NOT NULL,
    birth_data character varying NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    sex character varying NOT NULL,
    hire_date character varying NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16794    salaries    TABLE     o   CREATE TABLE public.salaries (
    emp_no character varying NOT NULL,
    salary character varying NOT NULL
);
    DROP TABLE public.salaries;
       public         heap    postgres    false            �            1259    16776    titles    TABLE     n   CREATE TABLE public.titles (
    title_id character varying NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public.titles;
       public         heap    postgres    false           