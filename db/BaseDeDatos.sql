CREATE SCHEMA Prog2;

USE Prog2;

CREATE TABLE usuarios (
    id_usuario          INT                 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre_usuario      VARCHAR(250)        NOT NULL,
    email               VARCHAR(250)        NOT NULL,
    contrasenas         VARCHAR(400)        NOT NULL,
    fecha               DATE                NOT NULL,
    dni                 INT                 NOT NULL,
    foto                VARCHAR(250)        NOT NULL,
    created_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at          TIMESTAMP           NULL
);

-- Insert usuarios
INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Victoria", "victoria@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-10-01", 46213843, "/images/users/perfil_victoria.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Nicolas Russo", "nicolas@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-02-10", 45421961, "/images/users/perfil_nicolas.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Bernarda", "bernarda@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-05-03", 46649858, "/images/users/perfil_bernarda.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Stefano", "stefano@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-05-06", 42219122, "/images/users/perfil_stefano.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Sofia", "sofia@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-04-10", 41929222, "/images/users/perfil_sofia.jpg", DEFAULT, DEFAULT, DEFAULT);


CREATE TABLE productos (
    id_producto           INT               UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_usuario            INT               UNSIGNED,
    imagen_producto       VARCHAR(250)      NOT NULL,
    nombre_producto       VARCHAR(250)      NOT NULL,
    descripcion           VARCHAR(900)      NOT NULL,
    created_at            TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    updated_at            TIMESTAMP         DEFAULT
    CURRENT_TIMESTAMP     ON UPDATE         CURRENT_TIMESTAMP,
    deleted_at            TIMESTAMP         NULL,

    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario)
);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto1.png", "Toyota
Corolla", "Un sedán compacto con un diseño elegante. Conocido por
su fiabilidad y eficiencia de combustible.", DEFAULT, DEFAULT,
DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto2.png", "Honda
Civic", "Un sedán compacto con un diseño deportivo. Popular por su
rendimiento y tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto3.png", "Ford
Mustang", "Un muscle car icónico con un diseño robusto y deportivo.
Famoso por su potencia y desempeño.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto4.png", "Chevrolet
Camaro", "Un deportivo con un diseño imponente. Conocido por su
potencia y estilo audaz.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 3, "/images/products/producto5.png", "BMW Serie
3", "Un sedán de lujo con un diseño elegante. Destacado por su
desempeño y tecnología de punta.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 3, "/images/products/producto6.png",
"Mercedes-Benz Clase C", "Un sedán de lujo con un diseño
sofisticado. Reconocido por su confort y elegancia.", DEFAULT,
DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 4, "/images/products/producto7.png", "Audi A4",
"Un sedán de lujo con un diseño moderno. Conocido por su tracción y
tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 4, "/images/products/producto8.png", "Volkswagen
Golf", "Un hatchback compacto con un diseño funcional. Famoso por
su versatilidad y eficiencia.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 5, "/images/products/producto9.png", "Nissan
Altima", "Un sedán mediano con un diseño elegante. Conocido por su
comodidad y tecnología.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 5, "/images/products/producto10.png", "Hyundai
Elantra", "Un sedán compacto con un diseño moderno. Popular por su
valor y características avanzadas.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto11.png", "Kia
Optima", "Un sedán mediano con un diseño elegante. Reconocido por
su estilo y tecnología.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto12.png", "Subaru
Impreza", "Un sedán compacto con un diseño robusto. Famoso por su
tracción en todas las ruedas y seguridad.", DEFAULT, DEFAULT,
DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto13.png", "Mazda3",
"Un sedán compacto con un diseño deportivo. Destacado por su manejo
y eficiencia.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto14.png", "Tesla Model
3", "Un sedán eléctrico con un diseño minimalista. Conocido por su
autonomía y tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 3, "/images/products/producto15.png", "Volvo S60",
"Un sedán de lujo con un diseño escandinavo. Reconocido por su
seguridad y confort.", DEFAULT, DEFAULT, DEFAULT);



 CREATE TABLE comentarios (
    id_comentario INT UNSIGNED PRIMARY KEY
    AUTO_INCREMENT,
    id_usuario INT UNSIGNED,
    id_producto INT UNSIGNED,
    comentario VARCHAR(350) NOT NULL,
    created_at TIMESTAMP DEFAULT
    CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT
    CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL,

    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
 );
 

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 1, "El Toyota Corolla es extremadamente fiable
 y eficiente en combustible. ¡Gran auto!", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 1, "Me encanta el diseño elegante y la
 conducción suave de mi Corolla.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 1, "El interior es muy cómodo y espacioso para
 un sedán compacto.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 1, "El Toyota Corolla tiene un gran valor de
 reventa, lo que lo convierte en una inversión inteligente.",
 DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 1, "Las características de seguridad en el
 Corolla son de primera categoría.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 2, "El diseño deportivo y el rendimiento del
 Honda Civic son incomparables.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 2, "Me encanta la tecnología avanzada y el
 viaje cómodo.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 2, "La eficiencia de combustible del Civic es
 fantástica, perfecta para viajes diarios.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 2, "El Honda Civic ofrece un gran valor por su
 precio.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 2, "El Civic tiene un diseño moderno y
 deportivo que siempre llama la atención.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 3, "El Ford Mustang es un verdadero clásico
 americano. ¡Increíble potencia y estilo!", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 3, "Me encanta la conducción deportiva y la
 aceleración del Mustang.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 3, "El diseño del Mustang es atemporal y
 siempre se destaca en la carretera.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 3, "La experiencia de conducción del Mustang es
 inigualable.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 3, "El sonido del motor del Mustang es música
 para mis oídos.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 4, "El Chevrolet Camaro es puro músculo y
 estilo. ¡Me encanta!", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 4, "El rendimiento del Camaro es impresionante
 y su diseño es audaz.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 4, "La conducción del Camaro es muy divertida y
 emocionante.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 4, "El Camaro tiene una presencia en la
 carretera que no puede ser ignorada.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 4, "Me encanta la potencia y la aceleración del
 Camaro.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 5, "El BMW Serie 3 es el equilibrio perfecto
 entre lujo y rendimiento.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 5, "La tecnología en el Serie 3 es de
 vanguardia y muy intuitiva.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 5, "El diseño interior del BMW Serie 3 es muy
 sofisticado.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 5, "La conducción del Serie 3 es suave y
 potente.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 5, "El BMW Serie 3 es mi coche favorito para
 viajes largos.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 6, "El Mercedes-Benz Clase C es el epítome de
 la elegancia y el confort.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 6, "Me encanta la comodidad y las
 características de lujo del Clase C.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 6, "El rendimiento del Clase C es impresionante
 y muy refinado.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 6, "El diseño del Mercedes-Benz Clase C es
 simplemente hermoso.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 6, "El Clase C es extremadamente seguro y está
 lleno de tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 7, "El Audi A4 combina a la perfección la
 tecnología y el rendimiento.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 7, "Me encanta el sistema quattro del A4,
 proporciona una tracción increíble.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 7, "El diseño interior del A4 es moderno y muy
 cómodo.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 7, "El Audi A4 tiene un rendimiento excelente y
 es muy eficiente en combustible.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 7, "El A4 es perfecto para cualquier ocasión,
 desde el trabajo hasta los fines de semana.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 8, "El Volkswagen Golf es extremadamente
 versátil y eficiente.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 8, "Me encanta la funcionalidad y el diseño del
 Golf.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 8, "El Golf tiene un gran rendimiento y es muy
 cómodo de conducir.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 8, "El diseño interior del Golf es práctico y
 elegante.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 8, "El Volkswagen Golf es mi coche favorito
 para la ciudad.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 9, "El Nissan Altima es muy cómodo y está lleno
 de tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 9, "Me encanta el diseño elegante y moderno del
 Altima.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 9, "El Altima tiene un gran rendimiento y es
 muy eficiente en combustible.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 9, "El interior del Nissan Altima es muy
 espacioso y cómodo.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 9, "El Altima es perfecto para viajes largos,
 es muy confortable.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 10, "El Hyundai Elantra es un gran coche por su
 valor y características.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 10, "Me encanta el diseño moderno y las
 características avanzadas del Elantra.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 10, "El Elantra tiene un rendimiento excelente
 y es muy eficiente.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 10, "El interior del Elantra es muy cómodo y
 bien diseñado.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 10, "El Hyundai Elantra es mi coche favorito
 para el uso diario.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 11, "El Kia Optima tiene un diseño elegante y
 características de lujo.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 11, "Me encanta la comodidad y el rendimiento
 del Optima.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 11, "El Optima tiene un gran valor por su
 precio y muchas características avanzadas.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 11, "El diseño interior del Kia Optima es muy
 moderno y confortable.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 11, "El Kia Optima es perfecto para viajes
 largos, es muy cómodo.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 12, "El Subaru Impreza es muy seguro y tiene
 una gran tracción en todas las ruedas.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 12, "Me encanta la robustez y la eficiencia del
 Impreza.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 12, "El diseño del Impreza es muy atractivo y
 funcional.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 12, "El Subaru Impreza es perfecto para todas
 las estaciones, especialmente en invierno.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 12, "El interior del Impreza es muy cómodo y
 bien diseñado.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 13, "El Mazda3 tiene un diseño deportivo y un
 manejo excelente.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 13, "Me encanta la eficiencia y el rendimiento
 del Mazda3.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 13, "El interior del Mazda3 es muy moderno y
 cómodo.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 13, "El Mazda3 es perfecto para viajes largos,
 es muy confortable.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 13, "El Mazda3 tiene un gran valor por su
 precio y muchas características avanzadas.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 14, "El Tesla Model 3 es increíblemente
 avanzado y tiene una gran autonomía.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 14, "Me encanta el diseño minimalista y la
 tecnología del Model 3.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 14, "El rendimiento del Model 3 es
 impresionante, especialmente en aceleración.", DEFAULT, DEFAULT,
 DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 14, "El Model 3 es muy cómodo y tiene muchas
 características avanzadas.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 14, "El Tesla Model 3 es mi coche favorito para
 viajes largos, es muy eficiente.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 2, 15, "El Volvo S60 es extremadamente seguro y
 tiene un gran diseño.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 3, 15, "Me encanta la comodidad y el rendimiento
 del S60.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 4, 15, "El S60 tiene un gran valor por su precio y
 muchas características de lujo.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 5, 15, "El diseño interior del Volvo S60 es muy
 moderno y confortable.", DEFAULT, DEFAULT, DEFAULT);

 INSERT INTO comentarios (id_comentario, id_usuario, id_producto,
 comentario, created_at, updated_at, deleted_at)
 VALUES (DEFAULT, 1, 15, "El Volvo S60 es perfecto para viajes
 largos, es muy cómodo.", DEFAULT, DEFAULT, DEFAULT);
