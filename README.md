# Racunarstvo u drustvenim naukama - Analiza i vizualizacija podataka
Profesor: dr Dragan O. Đurić 

Student: Ivana Sabranović, 51/2025

Analiza cena nekretnina u Njujorku

Analizirani su podaci o cenama stanova u Njujorku.
Cilj analize bio je ispitivanje uticaja karakteristike nekretnina, poput kvadrature, broja soba i broja kupatila na cenu stanova.
Korišćen je dataset sa podacima o nekretninama u Njujorku preuzet sa Kaggle platforme. 

Metode koje se koriste u analizi:
-Obrada i čišćenje podataka
-Data sampling
-Linearna regresija
-Decision tree
-Klasifikacija podataka
-Vizualizacija podataka pomoću ggplot2

Rezultati analize:
Baza podataka sadrži 4801 nekretninu u Njujorku, dostupne su informacije o cenama nekretnina, kvadraturi, broju soba i drugim karakteristikama. Iz originalne baze izdvojene su kolone koje su relevantne za analizu. 
Cene se kreću od 2.500 dolara do 2,1 milijardu dolara što ukazuje na veliku raznolikost tržišta i prisustvo luksuznih nekretnina, odnosno ukazuje na prisustvo ekstremnih vrednosti u bazi. Prosečna cena nekretnina iznosi približno 2,3miliona dolara, dok medijalna vrednost iznosi oko 825.000 dolara.Velika razlika između prosečne i medijalne vrednosti ukazuje na prisustvo ekstremnih vrednosti. Prosečna kvadratura nekretnina iznosi oko 2.100 kvadratnih stopa, dok najveće nekretnine imaju više od 65.000 kvadratnih stopa. Većina nekretnina u bazi poseduje između dve i četiri sobe i između jedan i tri kupatila. 
Pre kreiranja modela izvršena je podela podataka na trening i test skup metodom data sampling. Trening skup je korišćen za treniranje modela linearne regresije i stabla odlučivanja, dok test skup omogućava proveru performansi modela nad podacima koje model prethodno nije koristio. 
Za potrebe vizualizacije uklonjene su ekstremne vrednosti cena i kvadrature koje značajno odstupaju od većine podataka i otežavaju pregled grafikona. Granice su postavljene tako da obuhvate najveći deo nekretnina iz baze, dok su ekstremno velike vrednosti izostavljene radi bolje interpretacije odnosa između kvadrature i cene.
Rezultati linearne regresije pokazuju da kvadratura i broj kupatila pozitivno utiče na cenu nekretnina. Kvadratura se pokazala kao jedna od najznačajnijih promenljivih u modelu. Vrednost koeficijenta determinacije pokazuje da model objašnjava deo varijacije cena nekretnina, ali da na cenu utiču i dodatni faktori koji nisu uključeni u analizu.
Rezultati stabla odlučivanja pokazuju da kvadratura predstavlja najvažniji faktor pri određivanju cene nekretnina. Nakon početne podele prema kvadraturi, model dalje koristi broj kupatila i broj soba kako bi formirao grupe nekretnina sa sličnim cenama. Ovakav model omogućava jednostavnu i vizuelno preglednu interpretaciju odnosa između karakteristika nekretnika i njihove vrednosti.
Izvršena je jednostavna klasifikacija nekretnina na “Luksuzne” I “Standardne” na osnovu cene, pri čemu je dodata nova kolona Category koja omogućava lakšu analizu i grupisanje podataka. Na osnovu ove klasifikacije odrađena je I korisnička funkcija za klasifikaciju nekretnina na osnovu njihove cene. Funkcija omogućava automatsko određivanje kategorije nekretnina kao luksuzne ili standardne.

Literatura
https://ai.fon.bg.ac.rs/osnovne/inteligentni-sistemi/materijali-sa-predavanja/
https://github.com/inteligentni/lab02_R_intro/blob/master/2_Intro-to-R_Part-II.pdf
https://github.com/inteligentni/lab01_R_intro/blob/master/1_Intro_to_R_-_Part_I.pdf
https://www.kaggle.com/datasets/nelgiriyewithana/new-york-housing-market/data
https://cran.r-project.org/other-docs.html
