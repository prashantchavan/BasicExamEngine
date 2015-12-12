using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BasicExamEngine
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ExamQuestions QuestionSet = new ExamQuestions();
            Application["QUESTIONSET"] = QuestionSet.GenerateExamSet();
            Application["QUESTIONPOINTER"] = 0;
            Application["PREVIOUSQUESTIONPOINTER"] = 0;
        }
    }
}