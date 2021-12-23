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
            "Vítá pestré aktivity?",
            "Zjišťuje si fakta?",
            "Raději improvizuje, než plánuje?",
            "Vyjadřuje se svým tělěm?",
            "Má rád/ráda hodně vjemů, obzvláště hluk?",
            "Odtrhává se těžko od činnosti?",
            "Chce vše dělat sám/sama?"
         ]
      ),
      cognitive_functions_questions(
         "Si",
         String[
            "Klade důraz na minulou zkušenost?",
            "Plánuje často budoucnost?",
            "Trvá mu/jí dlouho adaptace na nové prostředí?",
            "Odděluje striktně fantasii a reálný svět?",
            "Má rád/ráda pohyb?",
            "Vnímá tělesné své tělesné potřeby?",
            "Je doslovný/doslovná?",
            "Je pořádkumilovný/pořádkumilovná?",
         ]
      ),
      cognitive_functions_questions(
         "Ne",
         String[
            "Má rád/ráda změny?",
            "Srší nápady?",
            "Nasává podněty a iniciuje kontakty?",
            "Zkoumá věci do hloubky?",
            "Zapojuje se do konverzace dospělých?",
            "Používá fantasii, tvoří bez předlohy?",
            "Dělá nerad/nerada praktické věci?",
            "Je nepozorný/nepozorná? Má šatnou krátkodobou paměť?",
            "Zkouší různé možnosti, jak udělat jednu věc?"
         ]
      ),
      cognitive_functions_questions(
         "Ni",
         String[
            "Zajímá ho/ji celkový pohled na věci?",
            "Syntetizuje informace z různých zdrojů?",
            "Potřebuje samotu?",
            "Reaguje pomalu, nebo opožděně?",
            "Je zasněný/zasněná, jakoby ve vlastním světě?",
            "Hraje si s předměty, jež nejsou primárně hračky (nářadí, kuchyňské náčiní, větve)?",
            "Čte rád/ráda?",
            "Má náhodné představy, např. že máma je agent?"
         ]
      ),
      cognitive_functions_questions(
         "Te",
         String[
            "Rád/Ráda plánuje?",
            "Dodržuje a vynucuje pravidla?",
            "Potřebuje být v centru dění?",
            "Myslí si, že vše zvládne? Uhýbá před kritikou?",
            "Úkoluje ostatní? Snaží se za ně rozhodovat?"
         ]
      ),
      cognitive_functions_questions(
         "Ti",
         String[
            "Hodnotí, porovnává, zpochybňuje?",
            "Optimalizuje na maximální výsledek s minimálním úsilím?",
            "Kategorizuje věci a myšlenky?",
            "Nerad/Nerada se opakuje?",
            "V novém prostředí první odtažitě pozoruje?",
            "Navazuje vjen minimum sociálních kontaktů?",
            "Vytváří kritéria úspěchu za běhu?",
            "Dbá na své soukromí a soběstačnost?",
            "Trvá na možnosti sám/sama se rozhodnout?",
            "Nevnímá emoce druhých?",
            "Když přijde k problému nebo nové situaci, snaží se první problém/situaci pochopit?"
         ]
      ),
      cognitive_functions_questions(
         "Fe",
         String[
            "Dbá na dodržování společenských norem?",
            "Pomáhá druhým a očekává pomoc na oplátku?",
            "Pečuje o druhé lidi?",
            "Zdá se, že se ho/jí vše nějak dotkne?",
            "Adaptuje se dobře na nové situace?",
            "Potřebuje uznání?",
            "Potřebuje být přijímaný/přijímaná druhými a milovaný/milovaná?",
            "Potřebuje mít ve všem pořádek?",
            "Organizuje druhé lidi?",
            "Škatulkuje lidi a události na dobré a zlé?",
            "Zaměřuje se na ostatní lidi?",
            "Komunikuje své pocity?"
         ]
      ),
      cognitive_functions_questions(
         "Fi",
         String[
            "Promýtá do druhých své pocity?",
            "Rozhoduje se dle svých ideálů?",
            "Má své hodnoty uvnitř, nesdílí je?",
            "Mají věci pro něj/ni emocionální hodnotu?",
            "Je vázaný/vázaná na rodiče?",
            "Nemá rád/ráda nové věci, změny?",
            "Potřebuje čas o samotě?",
            "Dá na své emoce?",
            "Rozhoduje se pomalu?",
            "Tráví hodně času ve svých představách?",
            "Zdá se na venek odtažitý/odtažitá, ale přeesto je vnímavý/vnímavá?",
            "Chce splnit všechna očekávání svého okolí?",
            "Sdílí své emoce?"
         ]
      )
   ];

scores = [calculate_score(cognitive_function) for cognitive_function in cognitive_functions];

for score in scores
   if score.score > 0.5
      println(score.name, " : ", score.score);
   end
end