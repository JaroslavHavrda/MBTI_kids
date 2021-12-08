struct cognitive_functions_questions
   name ::String;
   questions ::Array{String};
end

struct cognitive_functions_score
   name ::String
   score ::Int
end

function calculate_score( function ::cognitive_functions_questions)
   score = 0;
   for question in function.questions
      println(question);
      response = readline();
      while (response != "a" && response != "n")
         response = readline();
      end
      if response == "a"
         score = score + 1;
      end
   end
   cognitive_functions_score(function.name, score/size(function.questions));
end

cognitive_functions 
   = cognitive_functions_questions[
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
   ];

scores = [calculate_score(function) for function in functions];

for score in scores
   if score.score > 0.5
      println(score.name, " : ", score.score);
   end
end