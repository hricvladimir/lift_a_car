
# Úloha 1: Lift a Car

Už aj malé deti vedia, že ak sa chcú hojdať na hojdačke, tak ťažšie dieťa si musí sadnúť bližšie ku stredu. Z fyziky vieme, že ak majú byť deti na hojdačke v rovnováhe, musí platiť:

**F1 * r1 = F2 * r2**

Silu páky si uvedomil aj Archimedes a prehlásil: *Dajte mi pevný bod vo vesmíre a pohnem Zemou.*

Pozrime sa na realizáciu podobného pokusu v reálnych podmienkach. Predpokladajme, že máme železnú tyč dlhú 2 m. Kde by sme mali umiestniť onen pevný bod, ak by sme chceli len tiažou svojho tela nadvihnúť osobné auto?

$$r1 + r2 = 2 \implies r1 = 2 – r2$$  
$$m1 * r1 = m2 * r2$$  
$$...$$
$$r2 = 2 * m1 / (m1 + m2)$$

## Zadanie
Vytvorte funkciu `float lift_a_car(const int stick_length, const int human_weight, const int car_weight)` s troma parametrami:

- `const int stick_length` - Dĺžka tyče
- `const int human_weight` - Hmotnosť človeka
- `const int car_weight` - Hmotnosť auta

Funkcia pre zadané parametre vypočíta, na ktorom mieste je potrebné podložiť tyč tak, aby človek len tiažou vlastného tela nadvihol auto. Funkcia vráti hodnotu s výsledkom zaokrúhleným na 2 desatinné miesta.

### Príklad použitia funkcie

```c
printf("%.4f\n", lift_a_car(2, 80, 1400));
// prints: 0.1100
printf("%.4f\n", lift_a_car(4, 90, 1650));
// prints: 0.2100
```

## Hodnotenie

Táto úloha je za max. **1 bod**.
