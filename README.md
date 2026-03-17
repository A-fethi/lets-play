# LetsPlay Application

A Spring Boot REST API application for managing users, authentication, and products.

## Features

- **Authentication & Authorization**: JWT-based authentication with role-based security
- **User Management**: Create, read, and manage user accounts
- **Product Management**: Create, read, update, and delete products
- **Security**: Spring Security with custom JWT filters for protected endpoints
- **Exception Handling**: Global exception handler with custom error responses

## Project Structure

```
src/main/java/com/letsplay/
├── config/              # Spring configuration classes
│   └── SecurityConfig.java
├── controller/          # REST API controllers
│   ├── AuthController.java
│   ├── ProductController.java
│   └── UserController.java
├── dto/                 # Data Transfer Objects
│   ├── AuthResponse.java
│   ├── LoginRequest.java
│   ├── ProductRequest.java
│   ├── ProductResponse.java
│   ├── RegisterRequest.java
│   └── UserResponse.java
├── exception/           # Custom exceptions
│   ├── DuplicateResourceException.java
│   ├── ErrorResponse.java
│   ├── GlobalExceptionHandler.java
│   ├── ResourceNotFoundException.java
│   └── UnauthorizedException.java
├── model/               # Entity models
│   ├── Product.java
│   └── User.java
├── repository/          # Data access layer
│   ├── ProductRepository.java
│   └── UserRepository.java
├── security/            # JWT and security utilities
│   ├── JwtAuthFilter.java
│   └── JwtService.java
├── service/             # Business logic layer
│   ├── AuthService.java
│   ├── ProductService.java
│   └── UserService.java
└── LetsplayApplication.java
```

## Technologies Used

- **Framework**: Spring Boot
- **Security**: Spring Security with JWT
- **Database**: Configured via application.properties
- **Build Tool**: Maven

## Prerequisites

- Java 11 or higher
- Maven 3.6 or higher

## Installation & Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd lets-play
   ```

2. **Configure application properties**
   Edit `src/main/resources/application.properties` with your database and JWT configurations

3. **Build the project**
   ```bash
   ./mvnw clean build
   ```

4. **Run the application**
   ```bash
   ./mvnw spring-boot:run
   ```

The application will start on `http://localhost:8080` (default Spring Boot port)

## API Endpoints

### Authentication
- `POST /api/auth/register` - Register a new user
- `POST /api/auth/login` - Login and receive JWT token

### Users
- `GET /api/users` - Get all users (requires authentication)
- `GET /api/users/{id}` - Get user by ID (requires authentication)
- `PUT /api/users/{id}` - Update user (requires authentication)
- `DELETE /api/users/{id}` - Delete user (requires authentication)

### Products
- `GET /api/products` - Get all products
- `GET /api/products/{id}` - Get product by ID
- `POST /api/products` - Create product (requires authentication)
- `PUT /api/products/{id}` - Update product (requires authentication)
- `DELETE /api/products/{id}` - Delete product (requires authentication)

## Error Handling

The application includes a global exception handler that returns standardized error responses:

- `DuplicateResourceException` - Returns 409 Conflict
- `ResourceNotFoundException` - Returns 404 Not Found
- `UnauthorizedException` - Returns 401 Unauthorized
- General exceptions - Returns 500 Internal Server Error

## Security

- JWT tokens are used for API authentication
- Protected endpoints require a valid Bearer token in the Authorization header
- JwtAuthFilter intercepts requests and validates tokens
- Passwords are securely handled by Spring Security

