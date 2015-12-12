<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="BasicExamEngine.Exam" %>

<%@ Import Namespace="BasicExamEngine" %>
<%@ Import Namespace="System.Web" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam</title>
</head>
<body>
    <script runat="server">
        List<Question> QuestionSet;
        Question CurrentQuestion;
        int QuestionIndex;

        bool DisplayQuestion;

        public void LoadQuestion()
        {
            QuestionSet = (List<Question>)Application["QUESTIONSET"];
            QuestionIndex = (int)Application["QUESTIONPOINTER"];
            if (QuestionIndex < QuestionSet.Count)
            {
                DisplayQuestion = true;
                CurrentQuestion = QuestionSet[QuestionIndex];
                QuestionIndex = QuestionIndex + 1;
                Application["QUESTIONPOINTER"] = QuestionIndex;
            }
            else
            {
                DisplayQuestion = false;
            }
        }

        public void SaveAnswers(string SelectedAnswer)
        {
            int PreviousQuestionIndex = Convert.ToInt32(Application["PREVIOUSQUESTIONPOINTER"]);
            if (PreviousQuestionIndex < QuestionSet.Count)
            {
                Question PreviousQuestion = QuestionSet[PreviousQuestionIndex];
                PreviousQuestion.ValidateAnswer(SelectedAnswer);
                PreviousQuestionIndex = PreviousQuestionIndex + 1;
                Application["PREVIOUSQUESTIONPOINTER"] = PreviousQuestionIndex;
                if (PreviousQuestionIndex >= QuestionSet.Count)
                {
                    Response.Redirect("Result.aspx");
                }
            }
        }
    </script>
    <form action="Exam.aspx" method="post" runat="server">
        <% LoadQuestion(); %>

        <%
            if (DisplayQuestion)
            {
                Response.Write("Q" + CurrentQuestion.QuestionNo + " " + CurrentQuestion.ExamQuestion);
                Response.Write("<br/><br/><input type='radio' name='Q' value='" + CurrentQuestion.Option1 + "'>" + CurrentQuestion.Option1);
                Response.Write("<br/><input type='radio' name='Q' value='" + CurrentQuestion.Option2 + "'>" + CurrentQuestion.Option2);
                Response.Write("<br/><input type='radio' name='Q' value='" + CurrentQuestion.Option3 + "'>" + CurrentQuestion.Option3);
                Response.Write("<br/><input type='radio' name='Q' value='" + CurrentQuestion.Option4 + "'>" + CurrentQuestion.Option4 + "<br/><br/>");
                Response.Write("<input  type='submit' value='Submit' />");
            }            
        %>

        <%
            if (IsPostBack)
            {
                SaveAnswers(Request.Form["Q"]);
            }
        %>
    </form>
</body>
</html>
