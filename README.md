## Northwind

## 1. Descripción del Proyecto

Este proyecto consiste en el diseño e implementación de un **Data Warehouse** basado en la base de datos transaccional (OLTP) **Northwind**.

El objetivo principal es transformar los datos operacionales en un modelo optimizado para análisis y toma de decisiones, utilizando un **modelo dimensional tipo estrella (Star Schema)**.

En este modelo, se organiza la información en:
- **Tablas de dimensiones (Dim)**: contienen atributos descriptivos.
- **Tabla de hechos (Fact)**: contiene métricas y claves hacia las dimensiones.

---

## ⭐ Modelo Estrella

El Data Warehouse está estructurado alrededor de la tabla de hechos **FactSales**, la cual se conecta con las siguientes dimensiones:

### 🔹 Tablas de Dimensiones

- **DimCustomer**
  - Información de los clientes.

- **DimEmployee**
  - Información de los empleados responsables de las ventas.

- **DimProduct**
  - Información de los productos vendidos.

- **DimShipper**
  - Información de las empresas de envío.

- **DimDate**
  - Dimensión de tiempo.

---

### 🔸 Tabla de Hechos

- **FactSales**
  - Contiene las métricas del negocio.
  - Incluye claves foráneas hacia:
    - DimCustomer
    - DimEmployee
    - DimProduct
    - DimShipper
    - DimDate

---

## 🎯 Objetivo

Facilitar el análisis de datos históricos para responder preguntas como:

- ¿Qué productos se venden más?
- ¿Qué clientes generan más ingresos?
- ¿Qué empleados tienen mejor desempeño?
- ¿Cómo evolucionan las ventas en el tiempo?

---

## 🧠 Tecnologías Utilizadas

- SQL Server
- T-SQL

---
