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
## 🧠 Modelo E-R NorthWindOLTP
<img width="852" height="1138" alt="image" src="https://github.com/user-attachments/assets/231339e7-e0f9-4e52-b8ea-bb1caac9daa9" />

---
## 🚀 Despliegue del Proyecto

### 📥 Obtener el proyecto

#### Opción 1: Clonar el repositorio

#### Opción 2: Descargar ZIP

---

### 🔧 Requisitos

- SQL Server  
- SQL Server Management Studio (SSMS)  
- Base de datos Northwind restaurada  

---

### 🗄️ Crear el Data Warehouse

Ejecutar:

```sql
CREATE DATABASE NorthwindDW;
GO
```

---

### 🧱 Ejecutar scripts

Ir a la carpeta:

```
Schema/Tables/dbo/
```

Ejecutar los archivos en SQL Server:

- DimCustomer.sql  
- DimEmployee.sql  
- DimProduct.sql  
- DimShipper.sql  
- DimDate.sql  
- FactSales.sql  

---

### 🔄 Poblar datos (opcional)

Ejecutar los scripts ETL para cargar datos desde Northwind.

---

### ✅ Verificación

```sql
SELECT * FROM DimEmployee;
SELECT * FROM DimShipper;
SELECT * FROM FactSales;
```

---

### ✔ Resultado esperado

- Base de datos **NorthwindDW** creada  
- Tablas de dimensiones y hechos creadas correctamente  
- Datos listos para análisis  
