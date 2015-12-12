using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

namespace BasicExamEngine
{
    public class ExamQuestions
    {
        List<Question> QuestionList;
        public List<Question> GenerateExamSet()
        {
            QuestionList = new List<Question>();
            QuestionList.Add(new Question { QuestionNo = 1, ExamQuestion = "Reserve Bank of India was nationalized in the year", Option1 = "1935", Option2 = "1945", Option3 = "1949", Option4= "1969", correctAns = "1949" });
            QuestionList.Add(new Question { QuestionNo = 2, ExamQuestion = "The central banking functions in India are performed by the", Option1 = "Central Bank of India", Option2 = "Reserve Bank of India", Option3 = "State Bank of India", Option4 = "Punjab National Bank", correctAns = "Reserve Bank of India" });
            QuestionList.Add(new Question { QuestionNo = 3, ExamQuestion = "Gilt-edged market means", Option1 = "bullion market", Option2 = "market of government securities", Option3 = "market of guns", Option4 = "market of pure metals", correctAns = "market of government securities" });
            QuestionList.Add(new Question { QuestionNo = 4, ExamQuestion = "Which of the following is the most appropriate cause of exports surplus?", Option1 = "Country's exports promotion value", Option2 = "Country's exports promotion value", Option3 = "Developments in national and international markets", Option4 = "None of the above", correctAns = "Developments in national and international markets" });
            QuestionList.Add(new Question { QuestionNo = 5, ExamQuestion = "If the cash reserve ratio is lowered by the RBI, its impact on credit creation will be to", Option1 = "increase it", Option2 = "decrease it", Option3 = "no impact", Option4 = "None of the above", correctAns = "None of the above" });
            return QuestionList;
        }
        
       

    }
}