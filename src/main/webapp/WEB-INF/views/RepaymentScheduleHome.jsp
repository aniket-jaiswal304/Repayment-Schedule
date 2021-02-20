<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Repayment Schedule</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
  $(document).ready(function(){
    $("#clear").click(function(){
      $("#loanApplicationNo").val("");
    });
  });
  </script>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="container">
  <div class="page-header">
    <h1>Repayment Schedule</h1>
  </div>
  <form action="generatedRepaymentSchedule">
    <div class="col-xs-3">
      <label for="loanApplicationNo">Loan Account #</label>
      <input type="input" class="form-control" id="loanApplicationNo" name="loanApplicationNo">
    </div>
    <br><br><br><br><br>
    <div class="text-right">
       <button type="submit" class="btn btn-primary"">Show Report</button>
       <button type="button" id="clear" class="btn btn-primary">Clear</button>
    </div>

  </form>
</div>

</body>
</html>
