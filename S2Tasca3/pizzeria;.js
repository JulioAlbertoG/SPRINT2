use pizzeria;
db.client.insertMany([{"id_client" : 1, "nom" : "Julio", "cognom" : "González", "adreça" : "carrer Galleta no. 50", "codi_postal" : 08391, "id_localitat" : ObjectId("id_localidad1"), "telefon" : 6374859093, "comanda" : [{"id_comanda" : 1, "data" : new Date(), "tipus_com" : "a domicilio", "productes_comanda" : [{"id_product" : ObjectId("id_producte1"), "quantitat" : 2},{"id_product" : ObjectId("id_producte2"), "quantitat" : 4}], "preu" : 123, "id_botiga" : ObjectId("id_botiga1")}]},

    {"id_client" : 2, "nom" : "Robert", "cognom" : "Franklin", "adreça" : "carrer Bruc no. 67", "codi_postal" : 08390, "id_localitat" : ObjectId("id_localidad2"), "telefon" : 748596095, "comanda" : [{"id_comanda" : 2, "data" : new Date(), "tipus_com" : "recollir", "productes_comanda" : [{"id_product" : ObjectId("id_producte3"), "quantitat" : 3},{"id_product" : ObjectId("id_producte1"), "quantitat" : 3}], "preu" : 80, "id_botiga" : ObjectId("id_botiga2")}]},
   
    {"id_client" : 1, "nom" : "Anna", "cognom" : "Lara", "adreça" : "carrer Prim no. 34", "codi_postal" : 08674, "id_localitat" : ObjectId("id_localidad3"), "telefon" : 65382763, "comanda" : [{"id_comanda" : 3, "data" : new Date(), "tipus_com" : "a domicilio", "productes_comanda" : [{"id_product" : ObjectId("id_producte1"), "quantitat" : 2},{"id_product" : ObjectId("id_producte2"), "quantitat" : 4}], "preu" : 123, "id_botiga" : ObjectId("id_botiga5")}]}]);

db.botiga.insertMany([{"id_botiga" : 1, "adreça" : "carrer principal no. 500", "codi_postal" : 089364, "id_provincia" : ObjectId("id_provincia1"), "empleats" : [{"id_empleat" : 1, "nom" : "Arnau", "cognoms" : "Millan Clopes", "nif" : "3847567G", "telefon" : 635467826, "posicio" : "cuiner"}, {"id_empleat" : 2, "nom" : "Helena", "cognoms" : "Bargalló Sánchez", "nif" : "2637847B", "telefon" : 736475637, "posicio" : "repartidor"}]}, 
    
    {"id_botiga" : 2, "adreça" : "carrer secundari no. 56", "codi_postal" : 084578, "id_provincia" : ObjectId("id_provincia2"), "empleats" : [{"id_empleat" : 1, "nom" : "Thais", "cognoms" : "Rams Planella", "nif" : "8946578N", "telefon" : 658392098, "posicio" : "cuiner"}, {"id_empleat" : 2, "nom" : "Blanca", "cognoms" : "Roldán Dominguez", "nif" : "7465789B", "telefon" : 65839098, "posicio" : "repartidor"}]}, 
    
    {"id_botiga" : 3, "adreça" : "carrer major no. 34", "codi_postal" : 084637, "id_provincia" : ObjectId("id_provincia3"), "empleats" : [{"id_empleat" : 1, "nom" : "Ignasi", "cognoms" : "Bragulat", "nif" : "8746390B", "telefon" : 6528394057, "posicio" : "cuiner"}, {"id_empleat" : 2, "nom" : "Nùria", "cognoms" : "Català Llop", "nif" : "2738495C", "telefon" : 653829076, "posicio" : "repartidor"}]}]);

db.provincia.insertMany([{"id_provincia" : 1, "nom" : "Barcelona", "localitats" : [{"id_localidad" : 1, "nom" : "Barcelona"}, {"id_localidad" : 2, "nom" : "Badalona"}, {"id_localidad" : 3, "nom" : "Tiana"}]},
    
    {"id_provincia" : 2, "nom" : "Lleida", "localitats" : [{"id_localidad" : 1, "nom" : "Lleida"}, {"id_localidad" : 2, "nom" : "Agramunt"}, {"id_localidad" : 3, "nom" : "Vilaller"}]},
    
    {"id_provincia" : 3, "nom" : "Girona", "localitats" : [{"id_localidad" : 1, "nom" : "Girona"}, {"id_localidad" : 2, "nom" : "Llagostera"}, {"id_localidad" : 3, "nom" : "Lloret de Mar"}]}]);

db.producte.insertMany([{"id_producte" : 1, "nom" : "hamburguesa", "descripcio" : "hamburguesa vegana", "imatge" : "/home/imagenes/image.jpg", "preu" : 12}, 
    
    {"id_producte" : 2, "nom" : "pizza margharita", "descripcio" : "extra formatge", "imatge" : "/home/imagenes/pizzamar.jpg", "preu" : 9, "categoria" : "clásicas"}, 
    
    {"id_producte" : 3, "nom" : "pizza salami", "descripcio" : "salami picant", "imatge" : "/home/imagenes/pizzasal.jpg", "preu" : 12, "categoria" : "especialitats"}]);