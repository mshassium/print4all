INSERT INTO public.point (id_point, opening_times, address, coordinates, id_organisation) VALUES (1, '08:00-20:00', 'Россия, Саратов, Белоглинская улица, 17', '51.522658 46.019937', 1);
INSERT INTO public.point (id_point, opening_times, address, coordinates, id_organisation) VALUES (2, '11:00-20:00', 'Россия, Саратов, Вольская улица, 8а', '51.522535 46.019156', 1);
INSERT INTO public.organisations (id_organisation, name) VALUES (1, 'Магазин канцтоваров и игрушек, ИП Зимин И.А.');
INSERT INTO public.service (id_service, name, price) VALUES (1, 'Черно-белая печать 1 стр.', '2');
INSERT INTO public.service (id_service, name, price) VALUES (2, 'Цветная печать 1 стр.', '3');
INSERT INTO public.service (id_service, name, price) VALUES (3, 'Черно-белая ксерокопия 1 стр.', '5');
INSERT INTO public.service_point (id, id_service, id_point) VALUES (1, 1, 1);
INSERT INTO public.service_point (id, id_service, id_point) VALUES (2, 2, 1);
INSERT INTO public.service_point (id, id_service, id_point) VALUES (3, 3, 1);
