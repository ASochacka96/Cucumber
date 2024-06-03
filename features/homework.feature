Feature: Wyszukiwanie i zakup produktu w sklepie Allegro

Scenario: Użytkownik wyszukuje i kupuje produkt, a następnie waliduje zakup
    Given Zalogowany użytkownik jest na stronie głównej sklepu Allegro
    When Użytkownik wprowadza nazwę produktu "mata do jogi" w polu wyszukiwania
    And Użytkownik klika przycisk "Szukaj"
    Then Użytkownik widzi listę produktów mających powiązanie z wyszukiwaną frazą "mata do jogi"

    When Użytkownik wybiera produkt z listy i przechodzi na stronę danego produktu
    And Użytkownik klika na przycisk "Dodaj do koszyka" na stronie danego produktu
    Then Produkt "mata do jogi" zostaje dodany do koszyka

    When Użytkownik przechodzi do koszyka oznaczonego jako "Twój koszyk" 
    And Użytkownik klika przycisk "Dostawa i płatności" 
    And Użytkownik uzupełnia swoje dane adresowe 
    And Użytkownik wybiera sposób dostawy i sposób płatności
    And Użytkownik klika przycisk "Płacę" 
    And Użytkownik potwierdza płatność na otwartej stronie 
    Then Użytkownik widzi potwierdzenie przyjęcia zamówienia do realizacji oraz jego numer i przewidywaną datę dostawy
