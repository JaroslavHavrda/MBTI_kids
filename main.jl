struct cognitive_functions_questions
   name ::String;
   questions ::Array{String};
end

struct cognitive_functions_score
   name ::String
   score ::Float64
end

function calculate_score( cognitive_function ::cognitive_functions_questions)
   score = 0;
   for question in cognitive_function.questions
      println(question);
      response = readline();
      while (response != "a" && response != "n")
         println("zadej a nebo n");
         response = readline();
      end
      if response == "a"
         score = score + 1;
      end
   end
   cognitive_functions_score(cognitive_function.name, score/size(cognitive_function.questions,1));
end

cognitive_functions = cognitive_functions_questions[
      cognitive_functions_questions(
         "Se",
         String[
            "Vítá pestré aktivity. Rád/Ráda zkouší nové věci.",
            "Aktivně si zjišťuje fakta o věcech.",
            "Rád/Ráda improvizuje. Nerad/Nerada dělá plány.",
            "Vyjadřuje se i pomocí svého těla (čurání, prskání, plivání, obličeje)",
            "Oceňuje hodně smyslových vjemů. Má rád/ráda hluk.",
            "Často se zabere do činnosti a je těžké ho/ji od té činnosti odtrhnout.",
            "Vše chce dělat sám/sama, odmítá návod."
         ]
      ),
      cognitive_functions_questions(
         "Si",
         String[
            "Klade důraz na minulou zkušenost. Wždy se snaží najít pojítka mezi svou současnou sutuací a situací dřívější.",
            "Často plánuje budoucnost.",
            "Většinou trvá dlouho, než se adaptuje na nové prostředí.",
            "Striktně odděluji fantasii a realitu. Např. při hře zdůrazňuje, že je něco  \" jen jako \" ",
            "Má rád/ráda pohyb. Pohyb mu/jí způsobuje radost.",
            "Vnímá tělesné své tělesné potřeby. Připomene se, když má hlad. Od mala ví, kdy jít na nočník.",
            "Je doslovný/doslovná. Dává si pozor na termíny, které používá, opravuje druhé.",
            "Je pořádkumilovný/pořádkumilovná. Chce mít vše uspořádané.",
         ]
      ),
      cognitive_functions_questions(
         "Ne",
         String[
            "Má rád/ráda změny. Delší čas beze změny ho/ji začíná nudit.",
            "Srší nápady. Stále vymýšlí nové činnosti, s menším zájmem dokončovat.",
            "Nasává podněty z okolí. Iniciuje kontakty.",
            "Zkoumá věci do hloubky. Chce poznat, jak fungují.",
            "Zapojuje se do konverzace dospělých. Chce být brán/brána jako rovnocenný dospělým.",
            "Používá fantasii, tvoří bez předlohy.",
            "Nerad dělá praktické věci (úklid, domácí úkoly, zařizování)",
            "Je nepozorný/nepozorná. Má šatnou krátkodobou paměť.",
            "Zkouší různé možnosti, jak udělat jednu věc."
         ]
      ),
      cognitive_functions_questions(
         "Ni",
         String[
            "Zajímá ho/ji celkový pohled na věci a souvislosti více, než konkrétní detaily.",
            "Syntetizuje informace z různých zdrojů.",
            "Potřebuje čas o samotě.",
            "Reaguje pomalu, opožděně.",
            "Je zasněný/zasněná, jakoby ve vlastním světě.",
            "Hraje si s předměty, jež nejsou primárně hračky (nářadí, kuchyňské náčiní, větve).",
            "Rád/Ráda si čte.",
            "Má náhodné představy, např. že máma je agent."
         ]
      ),
      cognitive_functions_questions(
         "Te",
         String[
            "Rád/Ráda plánuje a následně se drží plánu.",
            "Dodržuje a vynucuje pravidla.",
            "Potřebuje být v centru dění.",
            "Myslí si, že vše zvládne. Kritika je mu/jí nepříjemná, snaží se ji oddálit nebo eliminovat.",
            "Úkoluje ostatní. Snaží se za ostatní rozhodovat."
         ]
      ),
      cognitive_functions_questions(
         "Ti",
         String[
            "Hodnotí, porovnává, zpochybňuje všechny informace.",
            "Optimalizuje na maximální výsledek s minimálním úsilím.",
            "Kategorizuje věci a myšlenky.",
            "Nerad/Nerada se opakuje.",
            "V novém prostředí první odtažitě pozoruje.",
            "Navazuje jen minimum sociálních kontaktů.",
            "Vytváří kritéria úspěchu za běhu.",
            "Dbá na své soukromí a soběstačnost.",
            "Trvá na možnosti sám/sama se rozhodnout.",
            "Nevnímá emoce druhých.",
            "Když přijde k problému nebo nové situaci, snaží se první problém/situaci pochopit."
         ]
      ),
      cognitive_functions_questions(
         "Fe",
         String[
            "Dbá na dodržování společenských norem.",
            "Pomáhá druhým. Když je v nesnázích, očekává pomoc od okolí (bere to jeko samozřejmost).",
            "Pečuje o druhé lidi.",
            "Zdá se, že se ho/jí vše nějak dotkne.",
            "Adaptuje se dobře na nové situace.",
            "Potřebuje uznání.",
            "Potřebuje být přijímaný/přijímaná druhými a milovaný/milovaná.",
            "Potřebuje mít ve všem pořádek.",
            "Organizuje druhé lidi.",
            "Škatulkuje lidi a události na dobré a zlé.",
            "Zaměřuje se na ostatní lidi. (Důraz: ne na sebe, ne na věci)",
            "Komunikuje své pocity."
         ]
      ),
      cognitive_functions_questions(
         "Fi",
         String[
            "Promýtá do druhých své pocity.",
            "Rozhoduje se dle svých ideálů, ne dle fakt.",
            "Má své hodnoty uvnitř, nesdílí je.",
            "Mají věci pro něj/ni emocionální hodnotu.",
            "Je vázaný/vázaná na rodiče.",
            "Nemá rád/ráda nové věci, změny.",
            "Potřebuje čas o samotě.",
            "Dá hlavně na své emoce.",
            "Rozhoduje se pomalu.",
            "Tráví hodně času ve svých představách.",
            "Zdá se na venek odtažitý/odtažitá, ale přeesto je vnímavý/vnímavá.",
            "Chce splnit všechna očekávání svého okolí.",
            "Sdílí své emoce s druhými."
         ]
      )
   ];

println("Instrukce:");
println("Uvidíte výpis potřeb nebo modelů chování dítěte.");
println(" Pokud danou potřebu nebo model chování pozorujete, dejte a, jinak dejte n");

scores = [calculate_score(cognitive_function) for cognitive_function in cognitive_functions];

for score in scores
   if score.score > 0.5
      println(score.name, " : ", score.score);
   end
end