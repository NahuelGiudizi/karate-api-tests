# 🥋 Karate API Tests - Framework de Automatización

[![Karate](https://img.shields.io/badge/Karate-1.4.1-orange)](https://github.com/karatelabs/karate)
[![Java](https://img.shields.io/badge/Java-11-blue)](https://openjdk.org/)
[![Maven](https://img.shields.io/badge/Maven-3.8+-red)](https://maven.apache.org/)

## 📋 ¿Qué es Karate?

**Karate** es un framework open-source que combina automatización de APIs, tests de performance y mocking en una única herramienta. Usa una sintaxis tipo Gherkin (BDD) que es fácil de leer incluso para personas no técnicas.

### 🌟 Ventajas principales:
- ✅ **Sin código Java** para escribir tests
- ✅ **Validación de JSON/XML** nativa
- ✅ **Reportes HTML** automáticos
- ✅ **Paralelización** integrada
- ✅ **Data-driven testing** sin dependencias externas

---

## 🎯 API Utilizada

Este proyecto usa **[ReqRes.in](https://reqres.in)** - una API REST pública y gratuita para testing.

**Base URL:** `https://reqres.in/api`

No requiere autenticación compleja, ideal para demos y entrevistas técnicas.

---

## 🚀 Cómo correr los tests

### Pre-requisitos
- Java 11 o superior
- Maven 3.8+

### Comandos

```bash
# Correr todos los tests
mvn test

# Correr solo tests de usuarios
mvn test -Dtest=UsersRunner

# Correr solo tests de autenticación
mvn test -Dtest=AuthRunner

# Correr con environment específico
mvn test -Dkarate.env=e2e
```

### 📊 Reportes

Después de correr los tests, el reporte HTML se genera automáticamente en:

```
target/karate-reports/karate-summary.html
```

Abrilo en tu navegador para ver resultados detallados con request/response completos.

---

## 🗂️ Estructura del Proyecto

```
karate-api-tests/
├── src/
│   └── test/
│       └── java/
│           ├── karate-config.js           # Configuración global (baseUrl, etc.)
│           └── com/
│               └── nahuel/
│                   └── api/
│                       ├── TestRunner.java        # Runner principal
│                       ├── users/
│                       │   ├── get-users.feature       # GET lista de usuarios
│                       │   ├── create-user.feature     # POST crear usuario
│                       │   ├── update-user.feature     # PUT actualizar usuario
│                       │   ├── chaining.feature        # Encadenamiento de requests
│                       │   ├── data-driven.feature     # Tests con múltiples datos
│                       │   └── UsersRunner.java
│                       └── auth/
│                           ├── login.feature            # Login + casos negativos
│                           └── AuthRunner.java
├── pom.xml
└── README.md
```

---

## 🧪 Cobertura de Tests

### 1️⃣ **GET Users** (`get-users.feature`)
- ✅ Validación de status code 200
- ✅ Validación de schema JSON
- ✅ Verificación de tipos de datos (`#number`, `#string`)
- ✅ Validación de paginación

### 2️⃣ **POST Create User** (`create-user.feature`)
- ✅ Creación exitosa de usuario
- ✅ Validación de response 201
- ✅ Verificación de campos retornados (name, job, id, createdAt)

### 3️⃣ **PUT Update User** (`update-user.feature`)
- ✅ Actualización de usuario existente
- ✅ Validación de status 200
- ✅ Verificación de datos actualizados

### 4️⃣ **Login** (`login.feature`)
- ✅ Login exitoso con credenciales válidas
- ✅ **Test negativo**: Login sin password → 400
- ✅ **Test negativo**: Login sin email → 400
- ✅ Validación de token generado

### 5️⃣ **Chaining** (`chaining.feature`)
- ✅ Crear usuario y capturar ID
- ✅ Usar el ID para hacer GET del mismo usuario
- ✅ Demostración de reutilización de datos entre requests

### 6️⃣ **Data-Driven** (`data-driven.feature`)
- ✅ Scenario Outline con múltiples usuarios
- ✅ Validación de 4 casos diferentes en un solo scenario
- ✅ Uso de Examples table

---

## 📝 Conceptos Clave Demostrados

| Concepto | Feature donde se usa |
|----------|---------------------|
| **REST Methods** | GET, POST, PUT en todos los tests |
| **Status Codes** | 200, 201, 400 validados |
| **JSON Schema Validation** | `#string`, `#number`, `#notnull` |
| **Path Parameters** | `update-user.feature` |
| **Query Parameters** | `get-users.feature` (param page) |
| **Request Body** | create y update features |
| **Variable Reuse** | `chaining.feature` con `def userId` |
| **Negative Testing** | `login.feature` casos sin password/email |
| **Data-Driven Testing** | `data-driven.feature` con Examples |

---

## 🔧 Configuración

### `karate-config.js`
```javascript
function fn() {
  var config = {
    baseUrl: 'https://reqres.in/api'
  };
  return config;
}
```

Esta configuración permite usar `baseUrl` en todos los features sin hardcodear la URL.

---

## 👨‍💻 Autor

**Nahuel Giudizi**  
QA Automation Engineer

---

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

---

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:
1. Fork el proyecto
2. Crea una branch (`git checkout -b feature/mejora`)
3. Commit tus cambios (`git commit -m 'Agregar mejora'`)
4. Push a la branch (`git push origin feature/mejora`)
5. Abre un Pull Request

---

⭐ Si te resultó útil, dejá una estrella en el repo!
