-- Error 1: Uso de SELECT * en lugar de columnas explicitas
SELECT * FROM usuarios WHERE activo = TRUE;

-- Error 2: UPDATE sin clausula WHERE (peligro de sobrescribir toda la tabla)
UPDATE usuarios SET activo = FALSE;

-- Error 3: DELETE sin clausula WHERE
DELETE FROM pedidos;

-- Error 4: Comparacion con NULL usando '=' en lugar de 'IS NULL'
SELECT id, nombre FROM usuarios WHERE password_plana = NULL;

-- Error 5: Condicion siempre verdadera (codigo redundante)
SELECT id, total FROM pedidos WHERE 1 = 1 AND total > 100;

-- Error 6: Credencial o secreto hardcodeado en script
INSERT INTO usuarios (id, nombre, email, password_plana)
VALUES (1, 'admin', 'admin@empresa.com', 'SuperSecreto12345!');
