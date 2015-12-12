<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="BasicExamEngine.Result" %>
<%@ Import Namespace="BasicExamEngine" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%
            List<Question> QuestionSet = (List<Question>)Application["QUESTIONSET"];
            Response.Write("<h2>Exam completed successfully</h2><br/>");
            foreach (Question AnsweredQuestion in QuestionSet)
            {
                Response.Write("Q" + AnsweredQuestion.QuestionNo + " " + AnsweredQuestion.ExamQuestion + " : <b> " + AnsweredQuestion.IsAnsCorrect + "</b><br/>");
            }
        %>
    </form>
</body>
</html>
