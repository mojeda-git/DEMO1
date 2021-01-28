CLASS zcl_rent_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rent_load_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    DATA: lt_brands    TYPE TABLE OF ztb_rent_brands,
          lt_cars      TYPE TABLE OF ztb_rent_cars,
          lt_customers TYPE TABLE OF ztb_rent_cust.


** BRANDS **
    lt_brands = VALUE #(
    ( marca = 'ASTON MARTIN' )
    ( marca = 'AUDI' )
    ( marca = 'BENTLEY' )
    ( marca = 'BUGATTI' )
    ( marca = 'FERRARI' )
    ( marca = 'FORD'    )
    ( marca = 'HONDA' )
    ( marca = 'JEEP' )
    ( marca = 'KIA' )
    ( marca = 'MERCEDES')
    ( marca = 'MINI' )
    ( marca = 'SEAT')
    ( marca = 'VW' )
    ( marca = 'BMW' ) ).


    DELETE FROM ztb_rent_brands.
    INSERT ztb_rent_brands FROM TABLE @lt_brands.
    out->write( 'ztb_rent_brands data inserted successfully!').


** CARS**
    lt_cars = VALUE #(
    ( matricula = '1246GSA' marca = 'BMW' modelo = 'SERIE 4' color = 'BLANCO' motor = '2.5' potencia = '210' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00' fecha_fabr = '20200201' puertas = '5' precio = '210' moneda = 'USD' alquilado = 'X'
   alq_desde = '20210101' alq_hasta = '20210201' url =  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/BMW_420i_xdrive_m_sport.jpg/1200px-BMW_420i_xdrive_m_sport.jpg' )
    ( matricula = '2174FHF' marca = 'KIA' modelo = 'STINGER' color = 'AZUL' motor = '4.2' potencia = '340' und_potencia = 'CV'  combustible = 'GASOLINA' consumo = '10.00' fecha_fabr = '20200617' puertas = '5' precio = '160' moneda = 'USD' alquilado = 'X'
   alq_desde = '20200801' alq_hasta = '20200831' url = 'https://www.autopista.es/uploads/s1/57/62/20/8/article-nuevo-kia-stinger-precios-espana-59d4a0c8489a7.jpeg')
    ( matricula = '2356FSF' marca = 'AUDI' modelo = 'A8' color = 'BLANCO' motor = '3.9' potencia = '140' und_potencia = 'CV' combustible = 'ELECTRIC' consumo = '00.00' fecha_fabr = '20200304' puertas = '3' precio = '140' moneda = 'USD' alquilado = 'X'
   alq_desde = '20210101' alq_hasta = '20210708' url = 'https://www.autobild.es/sites/autobild.es/public/styles/main_element/public/dc/fotos/Audi_S8_01.jpg?itok=207C7UxE' )
   ( matricula = '2392JFH' marca = 'JEEP' modelo = 'GRAND CHEROKEE' color = 'BLANCO' motor ='3.6' potencia = '176' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '12.00' fecha_fabr = '20200924' puertas = '5' precio = '160' moneda = 'USD' alquilado
  = 'X' alq_desde ='20200601' alq_hasta = '20201001' url = 'https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2014/02/309795-jeep-grand-cherokee-2013-espana-julio.jpg?itok=6L_dudPD' )
   ( matricula = '2837KFF' marca = 'MERCEDES' modelo = 'CLASE B' color = 'NEGRO' motor = '2.0' potencia = '200' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00' fecha_fabr = '20200726' puertas = '5' precio = '160' moneda = 'USD' alquilado =
  'X' alq_desde = '20200301' alq_hasta = '20210301' url ='https://static.motor.es/fotos-noticias/2019/05/min652x435/prueba-mercedes-clase-b-2019-201956886-1558366344_3.jpg' )
  ( matricula = '2837SUF' marca = 'MERCEDES' modelo = 'CLASE C' color = 'AMARILLO' motor = '3.0' potencia = '220' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '6.00' fecha_fabr = '20200614' puertas = '5' precio = '180' moneda = 'USD' alquilado =
 'X' alq_desde ='20211201' alq_hasta = '20211206' url = 'https://cdn.topgear.es/sites/navi.axelspringer.es/public/styles/855/public/media/image/2019/06/mercedes-amg-a35-shooting-brake_3.jpg?itok=XEkTaPH5' )
  ( matricula = '2847JGH' marca = 'HONDA' modelo = 'CIVIC' color = 'NEGRO' motor = '1.9' potencia = '180' und_potencia = 'CV' combustible = 'DIESEL' consumo = '5.00' fecha_fabr = '20210716' puertas = '5' precio = '180' moneda = 'USD' alquilado = 'X'
 alq_desde ='20211201' alq_hasta = '20211206' url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/2019_Honda_Civic_coupe_%28facelift%29%2C_front_12.16.19.jpg/300px-2019_Honda_Civic_coupe_%28facelift%29%2C_front_12.16.19.jpg')
  ( matricula = '29348KJ' marca = 'MINI' modelo = 'CABRIO' color = 'AMARILLO' motor = '2.0' potencia = '240' und_potencia = 'CV' combustible = 'ELECTRIC' consumo = '0.00' fecha_fabr = '20200812' puertas = '3' precio = '150' moneda = 'USD' alquilado = 'X'
 alq_desde ='20211106' alq_hasta = '20211206' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg'  )
  ).

    DELETE FROM ztb_rent_cars.
    INSERT ztb_rent_cars FROM TABLE @lt_cars.
    out->write( 'ztb_rent_cars data inserted successfully!').

** CUSTOMERS**
    lt_customers = VALUE #(
    ( doc_id = '005638984K' matricula = '8764FGH' nombres = 'Olivia' apellidos = 'Allan' email = 'olivia.allan@email.com' cntr_type = 'C1')
    ( doc_id = '982356739N' matricula = '8764FGH' nombres = 'Matt' apellidos = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
    ( doc_id = '453532543O' matricula = '8764FGH' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1')
    ( doc_id = '005632984R' matricula = '1246GSA' nombres = 'John' apellidos = 'Allan' email = 'john.allan@email.com' cntr_type = 'C3' )
    ( doc_id = '982367739N' matricula = '1246GSA' nombres = 'Clark' apellidos = 'Allan' email = 'clark.slater@email.com' cntr_type = 'C2' )
    ( doc_id = '340958439D' matricula = '29348KJ' nombres = 'Michael' apellidos = 'Short' email = 'michael.short@email.com' cntr_type = 'C1')
    ( doc_id = '964356739N' matricula = '29348KJ' nombres = 'Robert' apellidos = 'Allan' email = 'robert.slater@email.com' cntr_type = 'C1')
    ( doc_id = '340458439D' matricula = '2847JGH' nombres = 'Cole' apellidos = 'Short' email = 'cole.short@email.com' cntr_type = 'C2' )
    ( doc_id = '340958438D' matricula = '2827SAF' nombres = 'George' apellidos = 'Short' email = 'george.short@email.com' cntr_type = 'C3' )
   ( doc_id = '859675368G'  matricula = '2827SAF' nombres = 'Sonny' apellidos = 'Wright' email = 'sonny.wright@email.com' cntr_type = 'C2' )
    ( doc_id = '859675388V' matricula = '2827SAF' nombres = 'Evelyn' apellidos = 'Wright' email = 'evelyn.wright@email.com' cntr_type = 'C2' )
    ( doc_id = '340952439D' matricula = '2837KFF' nombres = 'Avery' apellidos = 'Short' email = 'avery.short@email.com' cntr_type = 'C4' )
    ( doc_id = '859675388G' matricula = '2837KFF' nombres = 'Madison' apellidos = 'Wright' email = 'madison.wright@email.com' cntr_type ='C1' )
    ( doc_id = '982656739N' matricula = '2837SUF' nombres = 'Matt' apellidos = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
     ( doc_id = '345093450E' matricula = '2425SFA' nombres = 'Sue' apellidos ='Sanderson' email = 'sue.sanderson@email.com' cntr_type = 'C1' )
    ( doc_id = '852367586F' matricula = '2425SFA' nombres = 'Eric' apellidos = 'Berry' email = 'eric.berry@email.com' cntr_type = 'C4')
    ( doc_id = '345093850A' matricula = '2392JFH' nombres = 'Lily' apellidos = 'Sanderson' email = 'lily.sanderson@email.com' cntr_type = 'C3' )
    ( doc_id = '489632862G' matricula = '2329HFS' nombres = 'Neil' apellidos = 'Welch' email = 'neil.welch@email.com' cntr_type = 'C2')
    ( doc_id = '345234534M' matricula = '2329HFS' nombres = 'Lily' apellidos = 'Langdon' email = 'lily.langdon@email.com' cntr_type = 'C1' )
    ( doc_id = '453572543O' matricula = '2329HFS' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C4')
   ( doc_id = '345839534R' matricula = '2356FSF' nombres = 'Andrew' apellidos = 'Langdon' email = 'andrew.langdon@email.com' cntr_type = 'C2' )
    ( doc_id = '852327586F' matricula = '2392JFH' nombres = 'Addison' apellidos = 'Berry' email = 'addison.berry@email.com' cntr_type = 'C2' )
    ( doc_id = '345831534R' matricula = '2174FHF' nombres = 'Lucy' apellidos = 'Langdon' email = 'lucy.langdon@email.com' cntr_type = 'C0' )
    ( doc_id = '489612882D' matricula = '2174FHF' nombres = 'Julian' apellidos = 'Welch' email = 'julian.welch@email.com' cntr_type ='C1' )
    ( doc_id = '348941597P' matricula = '2188SJS' nombres = 'Cooper' apellidos = 'Davies' email = 'cooper.davies@email.com' cntr_type = 'C1')
    ( doc_id = '348947997P' matricula = '1246GSA' nombres = 'Lillian' apellidos = 'Davies' email = 'lillian.davies@email.com' cntr_type = 'C2')
    ( doc_id = '430958233A' matricula = '2174FHF' nombres = 'Wendy' apellidos = 'Short' email = 'wendy.short@email.com' cntr_type = 'C4' )
    ( doc_id = '453832543O' matricula = '4545ABC' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1')
    ( doc_id = '982124739N' matricula = '2148AFS' nombres = 'Tyler' apellidos = 'Slater' email = 'tyler.slater@email.com' cntr_type = 'C3' )
    ( doc_id = '982356839W' matricula = '5235HER' nombres = 'Parker' apellidos = 'Slater' email = 'parker.slater@email.com' cntr_type = 'C3')
   ).


    DELETE FROM ztb_rent_cust.
    INSERT ztb_rent_cust FROM TABLE @lt_customers.
    out->write( 'ztb_rent_cust data inserted successfully!').

  ENDMETHOD.
ENDCLASS.
