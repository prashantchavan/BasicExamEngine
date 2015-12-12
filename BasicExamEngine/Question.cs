using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BasicExamEngine
{
    public class Question
    {
        public int QuestionNo { get; set; }
        public string ExamQuestion { get; set; }
        public string Option1 { get; set; }
        public string Option2 { get; set; }
        public string Option3 { get; set; }
        public string Option4 { get; set; }
        public string correctAns { get; set; }
        public string IsAnsCorrect { get; set; }

        public void ValidateAnswer(string UserAnswer)
        {
            if (string.IsNullOrEmpty(UserAnswer))
            {
                IsAnsCorrect = "Not Attempted";
            }
            else if (UserAnswer == correctAns)
            {
                IsAnsCorrect = "Correct";
            }
            else
            {
                IsAnsCorrect = "Wrong";
            }
        }
    }
}