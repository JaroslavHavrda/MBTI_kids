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

scores = [calculate_score(function) for function in functions];

for score in scores
   if score.score > 0.5
      println(score.name, " : ", score.score);
   end
end